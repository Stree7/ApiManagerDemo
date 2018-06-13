//
//  LGDemoService.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/13.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGDemoService.h"

NSString *const ServiceOrderCancelReasonIdentifier = @"ServiceOrderCancelReasonIdentifier";
NSString *const ServiceCategoryFirstLevelIdentifier = @"ServiceCategoryFirstLevelIdentifier";
NSString *const ServiceOrderDetailIdentifier = @"";
@implementation LGDemoService
- (NSString *)domain {
    return @"https://devsaas.zazfix.com";
}

- (NSDictionary *)services {
    return @{
             ServiceOrderCancelReasonIdentifier:@{
                     LGServiceUrlKey:@"/monolithic/api/v1/sys_dict_groups/selectByCode/orderCancelReason",
                     LGServiceMethodKey:@"GET"
                     },
             ServiceCategoryFirstLevelIdentifier:@{
                     LGServiceUrlKey:@"/monolithic/api/v1/store_category/select_with_mark/:storeId",
                     LGServiceMethodKey:@"GET"
                     },
             ServiceCategoryFirstLevelIdentifier:@{
                     LGServiceUrlKey:@"/monolithic/api/v1/orders/getServiceOrderDetail/:orderId",
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
