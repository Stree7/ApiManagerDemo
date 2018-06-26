//
//  LGApiManager.h
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/12.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LGNetworkDefines.h"
#import "LGURLResponse.h"
#import "LGServiceProtocol.h"

@interface LGApiManager : NSObject

// URL service
@property (nonatomic, strong, nullable) id<LGServiceProtocol> service;
@property (nonatomic, copy, nullable) NSString *serviceIdentifier;

// this two will be no use if service is set
// URL string ,example : https://www.baidu.com/
@property (nonatomic, copy, nonnull) NSString *urlStr;
//Http method GET. POST. PUT. DELETE.
@property (nonatomic, assign) LGNetworkMethod method;
@property (nonatomic, weak, nullable) NSDictionary *headerFields;

//Parameters that use for http request
@property (nonatomic, copy, nonnull) NSDictionary *params;

//The delegate use for receiving http response data
@property (nonatomic, weak, nullable) id  <LGNetworkDelegate> delegate;


//Http request header 基本认证
@property (nonatomic, copy, nullable) NSString *baseAuth;

//Http request token 身份认证
@property (nonatomic, copy,nullable) NSString *token;

//a set of default headers using a parameter serialization specified by this property. By default, this is set to  'LGNetworkHTTPRequestSerializer'
@property (nonatomic, assign) LGNetworkRquestSerializer requestSerializer;

//Http request time out interval 请求的超时间隔. Default is 60 sec.
@property (nonatomic, assign) NSTimeInterval timeoutInterval;


//response
@property (nonatomic, strong) LGURLResponse * _Nonnull response;
@property (nonatomic, assign) NSUInteger errorType;
@property (nonatomic, copy) NSString * _Nullable errorMessage;


//start
- (NSUInteger)start;

// cancel
- (void)cancelAllRequests;
- (void)cancelRequestWithRequestId:(NSUInteger)requestID;
@end
