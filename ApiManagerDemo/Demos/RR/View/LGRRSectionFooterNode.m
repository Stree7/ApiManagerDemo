//
//  LGRRSectionFooter.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/26.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGRRSectionFooterNode.h"
#import "LGSection.h"
#import "LGRRSectionFooterItemNode.h"
@interface LGRRSectionFooterNode ()
@property (nonatomic, weak) LGSection *section;
@property (nonatomic, strong) LGRRSectionFooterItemNode *moreNode;
@property (nonatomic, strong) LGRRSectionFooterItemNode *changeNode;
@property (nonatomic, strong) NSMutableArray *nodes;
@end

@implementation LGRRSectionFooterNode
- (instancetype)initWithModel:(id)model {
    self = [super init];
    self.section = model;
    self.nodes = [@[] mutableCopy];
    [self setup];
    return self;
}

- (void)setup {
    !self.section.moreText.length?:[self setMoreNode:[[LGRRSectionFooterItemNode alloc] initWithColor:[UIColor colorWithRed:0 green:0.55 blue:0.96 alpha:1] text:self.section.moreText imageName:@"ic_more_new_14x14_"]];
    self.section.content.count<=6?:[self setChangeNode:[[LGRRSectionFooterItemNode alloc] initWithColor:[UIColor colorWithRed:0.98 green:0.29 blue:0.13 alpha:1] text:@"换一批" imageName:@"ic_f5_14x14_"]];
    if (_moreNode) {
        [self.nodes addObject:self.moreNode];
        [self addSubnode:self.moreNode];
    }
    if (_changeNode) {
        [self.nodes addObject:self.changeNode];
        [self addSubnode:self.changeNode];
    }
    self.preferHeight = self.nodes.count ? 60 : 15;
}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize {
    ASStackLayoutSpec *horizontalSpec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionHorizontal spacing:10 justifyContent:ASStackLayoutJustifyContentSpaceAround alignItems:ASStackLayoutAlignItemsCenter children:self.nodes];
    return horizontalSpec;
}
@end
