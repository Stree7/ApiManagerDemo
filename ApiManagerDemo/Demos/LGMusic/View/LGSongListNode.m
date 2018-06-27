//
//  LGSongListNode.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/23.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGSongListNode.h"
#import "Song.h"
@interface LGSongListNode ()
@property (nonatomic, strong) Song *song;
@property (nonatomic, strong) ASNetworkImageNode *imageNode;
@property (nonatomic, strong) ASTextNode *nameTextNode;
@property (nonatomic, strong) ASTextNode *artistTextNode;
@end

@implementation LGSongListNode
- (instancetype)initWithModel:(id)model {
    self = [super init];
    self.song = model;
    [self setup];
    return  self;
}

- (void)setup {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    _imageNode = [[ASNetworkImageNode alloc] init];
    _imageNode.URL = [NSURL URLWithString:self.song.picRadio];
    _imageNode.placeholderFadeDuration = 0.2;
    _imageNode.placeholderEnabled = YES;
    _imageNode.contentMode = UIViewContentModeScaleAspectFill;
    _imageNode.clipsToBounds = YES;
    [self addSubnode:_imageNode];
    
    NSAttributedString *attributedTitle = [[NSAttributedString alloc] initWithString:self.song.title attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14],NSForegroundColorAttributeName:[UIColor blackColor]}];
    _nameTextNode = [[ASTextNode alloc]init];
    _nameTextNode.attributedText = attributedTitle;
    _nameTextNode.placeholderEnabled = YES;
    _nameTextNode.placeholderFadeDuration = 0.2;
    _nameTextNode.placeholderColor = [UIColor colorWithWhite:0.777 alpha:1.0];
    _nameTextNode.maximumNumberOfLines = 2;
    _nameTextNode.truncationMode = NSLineBreakByTruncatingTail;
    [self addSubnode:_nameTextNode];
    
    NSAttributedString *attributedArtistName = [[NSAttributedString alloc] initWithString:self.song.artistName attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:11],NSForegroundColorAttributeName:[UIColor lightGrayColor]}];
    _artistTextNode = [[ASTextNode alloc]init];
    _artistTextNode.attributedText = attributedArtistName;
    _artistTextNode.placeholderEnabled = YES;
    _artistTextNode.placeholderFadeDuration = 0.2;
    _artistTextNode.placeholderColor = [UIColor colorWithWhite:0.777 alpha:1.0];
    _artistTextNode.maximumNumberOfLines = 1;
    _artistTextNode.truncationMode = NSLineBreakByTruncatingTail;
    [self addSubnode:_artistTextNode];
}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize {
    _imageNode.style.preferredSize = CGSizeMake(45 , 45);
    _nameTextNode.style.maxWidth = ASDimensionMake(200);
    
    ASStackLayoutSpec *textVerticalSpec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionVertical spacing:5 justifyContent:ASStackLayoutJustifyContentCenter alignItems:ASStackLayoutAlignItemsStart children:@[_nameTextNode,_artistTextNode]];
    
    ASStackLayoutSpec *horizontalSpec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionHorizontal spacing:8 justifyContent:ASStackLayoutJustifyContentStart alignItems:ASStackLayoutAlignItemsCenter children:@[_imageNode,textVerticalSpec]];
    
    ASInsetLayoutSpec *insetSpec = [ASInsetLayoutSpec insetLayoutSpecWithInsets:UIEdgeInsetsMake(10, 10, 10, 0) child:horizontalSpec];
    return insetSpec;
}
@end
