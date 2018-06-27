//
//  LGSongService.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/23.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGSongService.h"

NSString * const LGServiceSongListIdentifier = @"LGServiceSongListIdentifier";

@implementation LGSongService
- (NSString *)domain {
    return @"http://tingapi.ting.baidu.com";
}

- (NSDictionary *)services {
    return @{
             LGServiceSongListIdentifier:@{
                     LGServiceUrlKey:@"/v1/restserver/ting?from=android&version=5.6.5.0&type=2&callback=cb_list&format=json&method=baidu.ting.billboard.billList",
                     LGServiceMethodKey:@"GET"
                     },
             };
}

- (NSString *)method:(NSString *)serviceIdentifier {
    return self.services[serviceIdentifier][LGServiceMethodKey];
}
- (NSString *)urlTail:(NSString *)serviceIdentifier {
    return self.services[serviceIdentifier][LGServiceUrlKey];
}
@end
