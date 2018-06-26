//
//  LGSongListManager.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/23.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGSongListApiManager.h"
#import "LGSongService.h"
@interface LGSongListApiManager ()
@end

@implementation LGSongListApiManager
- (instancetype)init {
    self = [super init];
    self.service = [LGSongService new];
    self.serviceIdentifier = LGServiceSongListIdentifier;
    self.params =@{
                   @"_t":@([NSDate date].timeIntervalSince1970*1000),
                   @"size":@(25),
                   @"offset":@0,
                   };
    return self;
}
@end
