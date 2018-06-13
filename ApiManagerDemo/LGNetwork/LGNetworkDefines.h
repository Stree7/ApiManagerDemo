//
//  LGNetworkDefines.h
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/12.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, LGNetworkMethod) {
    LGNetworkGet,
    LGNetworkPost,
    LGNetworkPut,
    LGNetworkDelete,
    LGNetworkPatch,
};


typedef NS_ENUM(NSUInteger,LGNetworkRquestSerializer) {
    LGNetworkHTTPRequestSerializer,
    LGNetworkJSONRequestSerializer,
};

@class LGApiManager;
@protocol LGNetworkDelegate <NSObject>
@required
//1.成功回调的方法
- (void)managerCallAPIDidSuccess:(LGApiManager * _Nonnull)manager;
//2.失败回调的方法
- (void)managerCallAPIDidFailed:(LGApiManager * _Nonnull)manager;
@end
