//
//  LGApiManager.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/12.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGApiManager.h"
#import <AFNetworking.h>
#import "LGApiProxy.h"
#import "LGNetwork.h"

@interface LGApiManager ()
@property (nonatomic, strong) AFHTTPSessionManager *afManager;
@property (nonatomic, strong) NSMutableArray *requestIds;

@end

@implementation LGApiManager
#pragma mark - lifecycle
- (instancetype)init {
    self = [super init];
    self.afManager = [AFHTTPSessionManager manager];
    self.afManager.responseSerializer = [AFHTTPResponseSerializer serializer];
    self.timeoutInterval = 60;
    self.requestIds = [@[] mutableCopy];
    return self;
}

#pragma mark - public
- (NSUInteger)start {
    [self reloadApiData];
    
    NSMutableURLRequest *request = [self.afManager.requestSerializer requestWithMethod:[self methodStr] URLString:self.urlStr parameters:self.params error:nil];
    request.originRequestParams = self.params;
    
    NSUInteger requestId =
    [LGApiProxy manager:self.afManager callApiWithRequest:request success:^(LGURLResponse *response) {
        [self.requestIds removeObject:[@(response.requestId) stringValue]];
        if (self.delegate && [self.delegate respondsToSelector:@selector(managerCallAPIDidSuccess:)]) {
            self.response = response;
            [self.delegate managerCallAPIDidSuccess:self];
        }
    } fail:^(LGURLResponse *response) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(managerCallAPIDidFailed:)]) {
            self.response = response;
            [self.delegate managerCallAPIDidFailed:self];
        }
    }];
    
    [self.requestIds addObject:[@(requestId) stringValue]];
    return requestId;
}

- (void)cancelAllRequests {
    [LGApiProxy cancelRequestWithRequestIDList:self.requestIds];
    [self.requestIds removeAllObjects];
}

- (void)cancelRequestWithRequestId:(NSUInteger)requestID {
    [LGApiProxy cancelRequestWithRequestID:requestID];
    [self.requestIds removeObject:[@(requestID) stringValue]];
}



#pragma mark - setters && getters
- (void)setService:(id<LGServiceProtocol>)service {
    _service = service;
    if ([service respondsToSelector:@selector(headerFields)]) {
        self.headerFields = service.headerFields;
    }
}

- (void)setHeaderFields:(NSDictionary *)headerFields {
    if (!headerFields) {
        return;
    }
    _headerFields = headerFields;
    for (NSString *key in headerFields.allKeys) {
        [self.afManager.requestSerializer setValue:headerFields[key] forHTTPHeaderField:key];
    }
}

- (void)setTimeoutInterval:(NSTimeInterval)timeoutInterval {
    //1.设置请求超时
    [_afManager.requestSerializer willChangeValueForKey:@"timeoutInterval"];
    _afManager.requestSerializer.timeoutInterval = timeoutInterval;
    [_afManager.requestSerializer didChangeValueForKey:@"timeoutInterval"];
    _timeoutInterval = timeoutInterval;
}

- (void)setToken:(NSString *)token {
    _token = token;
    [_afManager.requestSerializer setValue:[@"Bearer " stringByAppendingString:token] forHTTPHeaderField:@"Authorization"];
}

- (void)setBaseAuth:(NSString *)baseAuth {
    _baseAuth = baseAuth;
    [_afManager.requestSerializer setValue:[@"Basic " stringByAppendingString:baseAuth] forHTTPHeaderField:@"Authorization"];
}

- (void)setRequestSerializer:(LGNetworkRquestSerializer)requestSerializer {
    _requestSerializer = requestSerializer;
    switch (_requestSerializer) {
        case LGNetworkJSONRequestSerializer:
            _afManager.requestSerializer = [AFJSONRequestSerializer serializer];
            break;
        case LGNetworkHTTPRequestSerializer:
        default:
            _afManager.requestSerializer = [AFHTTPRequestSerializer serializer];
            break;
    }
}

- (void)reloadApiData {
    NSMutableDictionary *finalParams = [self.params?:@{} mutableCopy];
    if (self.service && self.serviceIdentifier) {
        NSString *urlTail = [self.service urlTail:self.serviceIdentifier];
        NSArray *components = [urlTail componentsSeparatedByString:@":"];
        NSString *wholeUrl = [self.service.domain stringByAppendingString:components.firstObject];
        self.urlStr = wholeUrl;
        
        if (components.count == 2) {
            NSString *urlParamKey = [components lastObject];
            id urlParamValue = finalParams[urlParamKey];
            [finalParams removeObjectForKey:urlParamKey];
            self.params = finalParams;
            self.urlStr = [wholeUrl stringByAppendingString:urlParamValue];
        }
    }
}

- (NSString *)methodStr {
    if (self.service && self.serviceIdentifier) {
        return [self.service method:self.serviceIdentifier];
    }
    switch (self.method) {
        case LGNetworkPut:
            return @"PUT";
        case LGNetworkPost:
            return @"POST";
        case LGNetworkPatch:
            return @"PATCH";
        case LGNetworkDelete:
            return @"DELETE";
        case LGNetworkGet:
        default:
            return @"GET";
    }
}
@end
