//
//  LGURLResponse.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/12.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGURLResponse.h"
@interface LGURLResponse ()
@property (nonatomic, assign) LGURLResponseStatus status;
@property (nonatomic, copy) NSString *errorMessage;
@property (nonatomic, assign) NSUInteger requestId;
@property (nonatomic, strong) NSData *responseData;
@property (nonatomic, copy) NSDictionary *requestParams;
@property (nonatomic, strong) NSDictionary *JSONObject;
@property (nonatomic, strong) NSString *JSONString;
@property (nonatomic, strong) NSError *error;


@end

@implementation LGURLResponse
#pragma mark - lifecycle
- (instancetype)initWithData:(NSData *)data requestId:(NSUInteger)requestId params:(id)params error:(NSError *)error {
    self = [super init];
    self.requestId = requestId;
    self.responseData = data;
    self.requestParams = params;
    self.error = error;
    self.status = [self responseStatusWithError:error];
    self.errorMessage = [NSString stringWithFormat:@"%@", error];
    return self;
}

#pragma mark - private methods
- (LGURLResponseStatus)responseStatusWithError:(NSError *)error
{
    if (error) {
        LGURLResponseStatus result = LGURLResponseStatusErrorNoNetwork;
        
        // 除了超时以外，所有错误都当成是无网络
        if (error.code == NSURLErrorTimedOut) {
            result = LGURLResponseStatusErrorTimeout;
        }
        if (error.code == NSURLErrorCancelled) {
            result = LGURLResponseStatusErrorCancel;
        }
        if (error.code == NSURLErrorNotConnectedToInternet) {
            result = LGURLResponseStatusErrorNoNetwork;
        }
        return result;
    } else {
        return LGURLResponseStatusSuccess;
    }
}

#pragma mark - setters && getters
- (void)setResponseData:(id)responseData {
    _responseData = responseData;
    if ([responseData isKindOfClass:[NSDictionary class]]) {
        _responseData = [NSJSONSerialization dataWithJSONObject:responseData options:NSJSONWritingSortedKeys error:nil];
        _JSONObject = responseData;
    }
}

- (NSString *)JSONString {
    if (!_JSONString) {
        _JSONString = [[NSString alloc] initWithData:_responseData encoding:NSUTF8StringEncoding];
    }
    return _JSONString;
}

- (NSDictionary *)JSONObject {
    if (!_JSONObject) {
        _JSONObject = [NSJSONSerialization JSONObjectWithData:_responseData options:0 error:NULL];
    }
    return _JSONObject;
}

@end
