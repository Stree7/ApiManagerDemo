//
//  LGRRAdvertiseCellNode.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/26.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGRRAdvertiseCellNode.h"
#import "LGSection.h"
@interface LGRRAdvertiseCellNode ()
@property (nonatomic, strong) LGSection *section;
@property (nonatomic, strong) ASNetworkImageNode *imageNode;
@end

@implementation LGRRAdvertiseCellNode
- (instancetype)initWithModel:(LGSection *)model {
    self = [super init];
    self.section = model;
    [self setup];
    return self;
}

- (void)setup {
    self.selectionStyle = UITableViewCellSeparatorStyleNone;
    
    LGAdvertise *ad = self.section.content.firstObject;
    _imageNode = [ASNetworkImageNode new];
    _imageNode.URL = [NSURL URLWithString:ad.imageUrl];
    _imageNode.placeholderFadeDuration = 0.1;
    _imageNode.placeholderEnabled = YES;
    _imageNode.contentMode = UIViewContentModeScaleAspectFill;
    _imageNode.clipsToBounds = YES;
    [self addSubnode:_imageNode];
}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize {
    ASRatioLayoutSpec *imageRatioSpec = [ASRatioLayoutSpec ratioLayoutSpecWithRatio:8/25.f child:_imageNode];
    ASInsetLayoutSpec *insetSpec = [ASInsetLayoutSpec insetLayoutSpecWithInsets:UIEdgeInsetsMake(10, 0, 30, 0) child:imageRatioSpec];
    return insetSpec;
}
@end
