//
//  LGRRHomeService.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/25.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGRRHomeService.h"
#import <UIKit/UIKit.h>
NSString * const LGServiceRRHomeTodayChoiceIdentifier = @"LGServiceRRHomeTodayChoiceIdentifier";

@implementation LGRRHomeService
- (NSString *)domain {
    return @"https://api.rr.tv";
}

- (NSDictionary *)services {
    return @{
             LGServiceRRHomeTodayChoiceIdentifier:@{
                     LGServiceUrlKey:@"/v3plus/index/todayChoice",
                     LGServiceMethodKey:@"POST"
                     },
             };
}

- (NSDictionary *)headerFields {
    return @{
             @"p":@"iOS",
             @"deviceMode":[UIDevice currentDevice].model?:@"iPhone",
             @"clientVersion":@"3.8.3",
             @"clientType":@"ios",
             };
}

- (NSString *)method:(NSString *)serviceIdentifier {
    return self.services[serviceIdentifier][LGServiceMethodKey];
}
- (NSString *)urlTail:(NSString *)serviceIdentifier {
    return self.services[serviceIdentifier][LGServiceUrlKey];
}
@end
