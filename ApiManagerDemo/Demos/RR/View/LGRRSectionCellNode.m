//
//  LGRRSectionCellNode.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/25.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGRRSectionCellNode.h"

#import "LGSection.h"
#import "LGSectionItemNode.h"
#import "LGRRSectionFooterNode.h"
@interface LGRRSectionCellNode ()
@property (nonatomic, strong) ASTextNode *titleNode;
@property (nonatomic, strong) NSMutableArray *videoNodes;
@property (nonatomic, strong) LGRRSectionFooterNode *footerNode;
@end

@implementation LGRRSectionCellNode
- (instancetype)initWithModel:(id)model {
    self = [super init];
    self.videoNodes = [@[] mutableCopy];
    [self setupWithModel:model];
    return self;
}

- (void)setupWithModel:(LGSection *)section {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    _titleNode = [ASTextNode new];
    _titleNode.attributedText =[[NSAttributedString alloc] initWithString:section.name attributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:0.11 green:0.11 blue:0.11 alpha:1],NSFontAttributeName:[UIFont boldSystemFontOfSize:18]}];
    _titleNode.placeholderEnabled = YES;
    _titleNode.placeholderFadeDuration = 0.2;
    _titleNode.placeholderColor = [UIColor colorWithWhite:0.777 alpha:1.0];
    _titleNode.maximumNumberOfLines = 2;
    _titleNode.truncationMode = NSLineBreakByTruncatingTail;
    [self addSubnode:_titleNode];
    
    for (NSUInteger i = 0; i < MIN(6,section.content.count); i ++ ) {
        LGSectionItemNode *node = [[LGSectionItemNode alloc] initWithModel:section.content[i]];
        [self addSubnode:node];
        [self.videoNodes addObject:node];
    }
    
    _footerNode = [[LGRRSectionFooterNode alloc] initWithModel:section];
    [self addSubnode:_footerNode];
}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize {
    _footerNode.style.preferredSize = CGSizeMake([UIScreen mainScreen].bounds.size.width, _footerNode.preferHeight);
    ASInsetLayoutSpec *titleInsetSpec = [ASInsetLayoutSpec insetLayoutSpecWithInsets:UIEdgeInsetsMake(20, 18, 18, 18) child:_titleNode];
    ASStackLayoutSpec *horizontalVideoSpec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionHorizontal spacing:3 justifyContent:ASStackLayoutJustifyContentSpaceBetween alignItems:ASStackLayoutAlignItemsStart flexWrap:ASStackLayoutFlexWrapWrap alignContent:ASStackLayoutAlignContentStart lineSpacing:9 children:self.videoNodes];
    ASInsetLayoutSpec *footerInsetSpec = [ASInsetLayoutSpec insetLayoutSpecWithInsets:UIEdgeInsetsMake(0, 0, 0, 0) child:_footerNode];
    ASStackLayoutSpec *verticalSpec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionVertical spacing:0 justifyContent:ASStackLayoutJustifyContentCenter alignItems:ASStackLayoutAlignItemsStart children:@[titleInsetSpec,horizontalVideoSpec,footerInsetSpec]];
    return verticalSpec;
}

@end
