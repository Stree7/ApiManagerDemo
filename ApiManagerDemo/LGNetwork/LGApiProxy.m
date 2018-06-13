//
//  LGApiProxy.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/12.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGApiProxy.h"
#import <AFNetworking.h>
#import "LGNetwork.h"

#define LGApiProxySingleton [LGApiProxy sharedInstance]
@interface LGApiProxy ()
//请求表
@property (nonatomic, strong) NSMutableDictionary *dispatchTable;
@end

@implementation LGApiProxy
+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static LGApiProxy *sharedInstance = nil;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[LGApiProxy alloc] init];
        sharedInstance.dispatchTable = [@{} mutableCopy];
    });
    return sharedInstance;
}

+ (NSUInteger)manager:(AFURLSessionManager *)manager callApiWithRequest:(NSURLRequest *)request success:(LGCallback)success fail:(LGCallback)fail {

    __block NSURLSessionTask *dataTask = [manager dataTaskWithRequest:request uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        NSUInteger requestId = [dataTask taskIdentifier];
        [LGApiProxySingleton.dispatchTable removeObjectForKey:[@(requestId) stringValue]];
        LGURLResponse *urlResponse = [[LGURLResponse alloc] initWithData:responseObject requestId:requestId params:request.originRequestParams error:error];
        if (error) {
            !fail?:fail(urlResponse);
        } else {
            !success?:success(urlResponse);
        }
    }];
    
    NSUInteger requestId = [dataTask taskIdentifier];
    [LGApiProxySingleton.dispatchTable setValue:dataTask forKey:[@(requestId) stringValue]];
    [dataTask resume];
    return requestId;
}

+ (void)cancelRequestWithRequestID:(NSUInteger)requestId {
    NSURLSessionTask *task = LGApiProxySingleton.dispatchTable[[@(requestId) stringValue]];
    [LGApiProxySingleton.dispatchTable removeObjectForKey:[@(requestId) stringValue]];
    [task cancel];
}

+ (void)cancelRequestWithRequestIDList:(NSArray *)requestIDList {
    for (NSString *requestIdString in requestIDList) {
        NSUInteger requestId = [requestIdString integerValue];
        [self cancelRequestWithRequestID:requestId];
    }
}
@end
