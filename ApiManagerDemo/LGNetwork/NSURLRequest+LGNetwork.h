//
//  NSURLRequest+LGNetwork.h
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/12.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURLRequest (LGNetwork)
@property (nonatomic, copy) NSDictionary *actualRequestParams;
@property (nonatomic, copy) NSDictionary *originRequestParams;
@end
