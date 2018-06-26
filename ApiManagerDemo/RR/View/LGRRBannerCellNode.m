//
//  LGRRBannerCellNode.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/26.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGRRBannerCellNode.h"
#import "LGBannerTop.h"
@interface LGRRBannerCellNode ()
@property (nonatomic, strong) ASNetworkImageNode *imageNode;
@end

@implementation LGRRBannerCellNode
- (instancetype)initWithModel:(id)model {
    self = [super init];
    [self setupWithModel:model];
    return self;
}

- (void)setupWithModel:(LGBannerTop *)model {
    _imageNode = [ASNetworkImageNode new];
    _imageNode.URL = [NSURL URLWithString:model.imgUrl];
    _imageNode.placeholderFadeDuration = 0.2;
    _imageNode.placeholderEnabled = YES;
    _imageNode.defaultImage = [UIImage imageNamed:@"heng_default_375x211_"];
    _imageNode.shouldCacheImage = NO;
    _imageNode.contentMode = UIViewContentModeScaleAspectFill;
    _imageNode.clipsToBounds = YES;
    _imageNode.animatedImageRunLoopMode = NSDefaultRunLoopMode;
    [self addSubnode:_imageNode];
}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize {
//    self.imageNode.style.preferredSize = CGSizeMake(335, 148);
    ASInsetLayoutSpec *insetLayout = [ASInsetLayoutSpec insetLayoutSpecWithInsets:UIEdgeInsetsZero child:self.imageNode];
    return insetLayout;
}
@end
