//
//  LGSectionItemNode.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/25.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGSectionItemNode.h"
#import "LGTopVideo.h"
@interface LGSectionItemNode ()
@property (nonatomic, strong) ASNetworkImageNode *imageNode;
@property (nonatomic, strong) ASTextNode *timeNode;
@property (nonatomic, strong) ASTextNode *descNode;
@end

@implementation LGSectionItemNode
- (instancetype)initWithModel:(LGTopVideo *)model {
    self = [super init];
    [self setupWithModel:model];
    return self;
}

- (void)setupWithModel:(LGTopVideo *)content {
    
    _imageNode = [[ASNetworkImageNode alloc] init];
    _imageNode.URL = [NSURL URLWithString:content.cover];
    _imageNode.placeholderFadeDuration = 0.2;
    _imageNode.placeholderEnabled = YES;
    _imageNode.defaultImage = [UIImage imageNamed:@"heng_default_375x211_"];
    _imageNode.clipsToBounds = YES;
    _imageNode.contentMode = UIViewContentModeScaleAspectFill;
    _imageNode.animatedImageRunLoopMode = NSDefaultRunLoopMode;
    [self addSubnode:_imageNode];
    
    _timeNode = [ASTextNode new];
    _timeNode.attributedText =[[NSAttributedString alloc] initWithString:content.duration attributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:1 green:1 blue:1 alpha:1],NSFontAttributeName:[UIFont boldSystemFontOfSize:9]}];
    _timeNode.placeholderEnabled = YES;
    _timeNode.placeholderFadeDuration = 0.2;
    _timeNode.placeholderColor = [UIColor colorWithWhite:0.777 alpha:1.0];
    _timeNode.maximumNumberOfLines = 1;
    _timeNode.truncationMode = NSLineBreakByTruncatingTail;
    [self addSubnode:_timeNode];
    
    _descNode = [ASTextNode new];
    _descNode.attributedText =[[NSAttributedString alloc] initWithString:content.title attributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:0.13 green:0.13 blue:0.13 alpha:1],NSFontAttributeName:[UIFont systemFontOfSize:14]}];
    _descNode.placeholderEnabled = YES;
    _descNode.placeholderFadeDuration = 0.2;
    _descNode.placeholderColor = [UIColor colorWithWhite:0.777 alpha:1.0];
    _descNode.maximumNumberOfLines = 2;
    _descNode.truncationMode = NSLineBreakByTruncatingTail;
    [self addSubnode:_descNode];
}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize {
    _imageNode.style.preferredSize = CGSizeMake(186, 105);
    _descNode.style.maxWidth = ASDimensionMake(170);
    
    ASInsetLayoutSpec *timeInsetSpec = [ASInsetLayoutSpec insetLayoutSpecWithInsets:UIEdgeInsetsMake(0, 0, 5, 10) child:_timeNode];
    
    ASRelativeLayoutSpec *timeRelativeSpec = [ASRelativeLayoutSpec relativePositionLayoutSpecWithHorizontalPosition:ASRelativeLayoutSpecPositionEnd verticalPosition:ASRelativeLayoutSpecPositionEnd sizingOption:ASRelativeLayoutSpecSizingOptionDefault child:timeInsetSpec];
    
    ASOverlayLayoutSpec *coverOverlaySpec = [ASOverlayLayoutSpec overlayLayoutSpecWithChild:_imageNode overlay:timeRelativeSpec];
    
    ASStackLayoutSpec *verticalSpec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionVertical spacing:10 justifyContent:ASStackLayoutJustifyContentCenter alignItems:ASStackLayoutAlignItemsCenter children:@[coverOverlaySpec,_descNode]];
    
    return verticalSpec;
}

@end
