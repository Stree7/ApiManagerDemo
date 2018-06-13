//
//  LGURLResponse.h
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/12.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, LGURLResponseStatus)
{
    LGURLResponseStatusSuccess, //作为底层，请求是否成功只考虑是否成功收到服务器反馈。至于返回的数据是否完整，由上层的APIManager来决定。
    LGURLResponseStatusErrorTimeout,
    LGURLResponseStatusErrorCancel,
    LGURLResponseStatusErrorNoNetwork // 默认除了超时以外的错误都是无网络错误。
};

@interface LGURLResponse : NSObject
@property (nonatomic, assign, readonly) LGURLResponseStatus status;
@property (nonatomic, copy, readonly) NSString *errorMessage;
@property (nonatomic, assign, readonly) NSUInteger requestId;
@property (nonatomic, strong, readonly) NSData *responseData;
@property (nonatomic, copy, readonly) NSDictionary *requestParams;
@property (nonatomic, strong, readonly) NSDictionary *JSONObject;
@property (nonatomic, strong, readonly) NSString *JSONString;
@property (nonatomic, strong, readonly) NSError *error;

- (instancetype)initWithData:(NSData *)data requestId:(NSUInteger)requestId params:(id)params error:(NSError *)error;


@end
