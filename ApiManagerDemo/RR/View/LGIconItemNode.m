//
//  LGIconItemNode.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/25.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGIconItemNode.h"
#import "LGBannerTop.h"
@interface LGIconItemNode ()
@property (nonatomic, weak) LGBannerTop *item;
@property (nonatomic, strong) ASNetworkImageNode *imageNode;
@property (nonatomic, strong) ASTextNode *textNode;
@end

@implementation LGIconItemNode
- (instancetype)initWithModel:(LGBannerTop *)item {
    self = [super init];
    self.item = item;
    [self setup];
    return self;
}

- (void)setup {
    _imageNode = [[ASNetworkImageNode alloc] init];
    _imageNode.URL = [NSURL URLWithString:self.item.imgUrl];
    _imageNode.placeholderFadeDuration = 0.2;
    _imageNode.placeholderEnabled = YES;
    _imageNode.contentMode = UIViewContentModeScaleAspectFill;
    _imageNode.clipsToBounds = YES;
    [self addSubnode:_imageNode];
    
    _textNode = [ASTextNode new];
    _textNode.attributedText =[[NSAttributedString alloc] initWithString:self.item.title attributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1],NSFontAttributeName:[UIFont systemFontOfSize:14]}];
    _textNode.placeholderEnabled = YES;
    _textNode.placeholderFadeDuration = 0.2;
    _textNode.placeholderColor = [UIColor colorWithWhite:0.777 alpha:1.0];
    _textNode.maximumNumberOfLines = 2;
    _textNode.truncationMode = NSLineBreakByTruncatingTail;
    [self addSubnode:_textNode];
}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize {
    _imageNode.style.preferredSize = CGSizeMake(107.f/2, 107.f/2);
    
    ASStackLayoutSpec *verticalSpec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionVertical spacing:15 justifyContent:ASStackLayoutJustifyContentStart alignItems:ASStackLayoutAlignItemsCenter children:@[_imageNode,_textNode]];
    return[ASInsetLayoutSpec insetLayoutSpecWithInsets:UIEdgeInsetsMake(0, 0, 0, 0) child:verticalSpec];
}
@end
