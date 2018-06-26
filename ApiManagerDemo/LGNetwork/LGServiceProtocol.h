//
//  LGServiceProtocol.h
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/13.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#ifndef LGServiceProtocol_h
#define LGServiceProtocol_h
#import <Foundation/Foundation.h>

static NSString *const LGServiceUrlKey = @"LGServiceUrlKey";
static NSString *const LGServiceMethodKey = @"LGServiceMethodKey";

@protocol LGServiceProtocol <NSObject>
@required
//url domain. example: http://192.168.0.1:8080
@property (nonatomic, copy) NSString *domain;
//service url tails. example:
//      @{serviceIdentifier:@{
                                                //LGServiceUrlKey       :   @"url_str_value",
                                                //LGServiceMethodKey:   @"GET"
                                        //}}
//                => url is like: /api/v1/user . Or more complicated: /api/v1/user/:userId
@property (nonatomic, copy) NSDictionary *services;

- (NSString *)method:(NSString *)serviceIdentifier;
- (NSString *)urlTail:(NSString *)serviceIdentifier;

@optional
@property (nonatomic, weak, nullable) NSDictionary *headerFields;

@end

#endif /* LGServiceProtocol_h */
