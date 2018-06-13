//
//  LGApiProxy.h
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/12.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LGURLResponse.h"

typedef void(^LGCallback)(LGURLResponse *response);

@interface LGApiProxy : NSObject

+ (NSUInteger)manager:(id)manager callApiWithRequest:(NSURLRequest *)request success:(LGCallback)success fail:(LGCallback)fail;

//取消请求
+ (void)cancelRequestWithRequestID:(NSUInteger)requestID;
+ (void)cancelRequestWithRequestIDList:(NSArray *)requestIDList;

@end
