//
//  LGRRHomeApiManager.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/25.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGRRHomeApiManager.h"
#import "LGRRHomeService.h"
@implementation LGRRHomeApiManager
- (instancetype)init {
    self = [super init];
    self.service = [LGRRHomeService new];
    self.serviceIdentifier = LGServiceRRHomeTodayChoiceIdentifier;
    self.params =@{
                   };
    return self;
}
@end
