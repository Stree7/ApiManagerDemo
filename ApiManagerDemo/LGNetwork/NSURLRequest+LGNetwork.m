//
//  NSURLRequest+LGNetwork.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/12.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "NSURLRequest+LGNetwork.h"
#import <objc/runtime.h>

static void *LGNetworkingActualRequestParams = &LGNetworkingActualRequestParams;
static void *LGNetworkingOriginRequestParams = &LGNetworkingOriginRequestParams;
static void *LGNetworkingRequestService = &LGNetworkingRequestService;

@implementation NSURLRequest (LGNetwork)

- (void)setActualRequestParams:(NSDictionary *)actualRequestParams
{
    objc_setAssociatedObject(self, LGNetworkingActualRequestParams, actualRequestParams, OBJC_ASSOCIATION_COPY);
}

- (NSDictionary *)actualRequestParams
{
    return objc_getAssociatedObject(self, LGNetworkingActualRequestParams);
}

- (void)setOriginRequestParams:(NSDictionary *)originRequestParams
{
    objc_setAssociatedObject(self, LGNetworkingOriginRequestParams, originRequestParams, OBJC_ASSOCIATION_COPY);
}

- (NSDictionary *)originRequestParams
{
    return objc_getAssociatedObject(self, LGNetworkingOriginRequestParams);
}
@end
