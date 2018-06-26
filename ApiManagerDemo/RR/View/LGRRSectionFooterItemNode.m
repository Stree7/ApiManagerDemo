//
//  LGRRSectionFooterItemNode.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/26.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGRRSectionFooterItemNode.h"
@interface LGRRSectionFooterItemNode ()
@property (nonatomic, strong) ASTextNode *textNode;
@property (nonatomic, strong) ASImageNode *imageNode;
@end
@implementation LGRRSectionFooterItemNode
- (instancetype)initWithColor:(UIColor *)color text:(NSString *)text imageName:(NSString *)name {
    self = [super init];
    [self setupWithColor:color text:text imageName:name];
    return self;
}

- (void)setupWithColor:(UIColor *)color text:(NSString *)text  imageName:(NSString *)imageName{
    _textNode = [ASTextNode new];
    _textNode.attributedText =[[NSAttributedString alloc] initWithString:text attributes:@{NSForegroundColorAttributeName:color,NSFontAttributeName:[UIFont systemFontOfSize:12]}];
    _textNode.placeholderEnabled = YES;
    _textNode.placeholderFadeDuration = 0.2;
    _textNode.placeholderColor = [UIColor colorWithWhite:0.777 alpha:1.0];
    _textNode.maximumNumberOfLines = 2;
    _textNode.truncationMode = NSLineBreakByTruncatingTail;
    [self addSubnode:_textNode];
    
    _imageNode = [[ASImageNode alloc] init];
    _imageNode.image = [UIImage imageNamed:imageName];
    _imageNode.placeholderFadeDuration = 0.2;
    _imageNode.placeholderEnabled = YES;
    _imageNode.contentMode = UIViewContentModeScaleAspectFill;
    _imageNode.clipsToBounds = YES;
    _imageNode.animatedImagePaused = YES;
    [self addSubnode:_imageNode];
}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize {
    _imageNode.style.preferredSize = CGSizeMake(14, 14);
    ASStackLayoutSpec *horizontalSpec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionHorizontal spacing:9 justifyContent:ASStackLayoutJustifyContentCenter alignItems:ASStackLayoutAlignItemsCenter children:@[_textNode,_imageNode]];
    return horizontalSpec;
}
@end
