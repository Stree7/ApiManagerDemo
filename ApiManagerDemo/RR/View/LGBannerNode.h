//
//  LGBannerNode.h
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/26.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import <AsyncDisplayKit/AsyncDisplayKit.h>

@interface LGBannerNode : ASDisplayNode 
@property (nonatomic, assign) NSUInteger numOfItems;
- (instancetype)initWithModel:(id)model;
@end
