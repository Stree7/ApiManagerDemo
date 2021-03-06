//
//  LGRRHomeService.h
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/25.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LGServiceProtocol.h"

extern NSString * const LGServiceRRHomeTodayChoiceIdentifier;

@interface LGRRHomeService : NSObject <LGServiceProtocol>
//url domain. example: http://192.168.0.1:8080
@property (nonatomic, copy) NSString *domain;
//service url tails. example:
//      @{@"service_key":@{
//LGServiceUrlKey       :   @"url_str_value",
//LGServiceMethodKey:   @"GET"
//}}
//                => url is like: /api/v1/user . Or more complicated: /api/v1/user/:userId
@property (nonatomic, copy) NSDictionary *services;

@property (nonatomic, weak, nullable) NSDictionary *headerFields;

- (NSString *)method:(NSString *)serviceIdentifier;
- (NSString *)urlTail:(NSString *)serviceIdentifier;
@end
