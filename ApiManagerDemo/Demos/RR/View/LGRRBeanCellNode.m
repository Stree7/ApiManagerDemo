//
//  LGRRBeanCellNode.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/25.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGRRBeanCellNode.h"
#import "LGTodayChoice.h"
#import "LGIconItemNode.h"
@interface LGRRBeanCellNode ()
@property (nonatomic, strong) NSArray <LGBannerTop *>*beans;
@property (nonatomic, strong) NSMutableArray <LGIconItemNode *>*nodes;
@end

@implementation LGRRBeanCellNode
- (instancetype)initWithModel:(NSArray <LGBannerTop *>*)model {
    self = [super init];
    self.beans = model;
    self.nodes = [NSMutableArray arrayWithCapacity:self.beans.count];
    [self setup];
    return self;
}

- (void)setup {
    self.selectionStyle = UITableViewCellSeparatorStyleNone;
    for (LGBannerTop *bannerTop in self.beans) {
        LGIconItemNode *node = [[LGIconItemNode alloc] initWithModel:bannerTop];
        node.style.width = ASDimensionMake(([UIScreen mainScreen].bounds.size.width - 20) /4.1f);
        [self addSubnode:node];
        [self.nodes addObject:node];
    }
}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize {
    
    ASStackLayoutSpec *horizontalSpec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionHorizontal spacing:0 justifyContent:ASStackLayoutJustifyContentStart alignItems:ASStackLayoutAlignItemsCenter flexWrap:ASStackLayoutFlexWrapWrap alignContent:ASStackLayoutAlignContentCenter lineSpacing:12 children:self.nodes];
    ASInsetLayoutSpec *insetSpec = [ASInsetLayoutSpec insetLayoutSpecWithInsets:UIEdgeInsetsMake(20, 10, 12, 10) child:horizontalSpec];
    return insetSpec;
}
@end
