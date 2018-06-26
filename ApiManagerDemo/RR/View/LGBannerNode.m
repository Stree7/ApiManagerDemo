//
//  LGBannerNode.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/26.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGBannerNode.h"
#import "LGBannerTop.h"
#import "LGBannerTop.h"
#import "LGRRBannerCellNode.h"
@interface LGBannerNode ()<ASCollectionDelegate,ASCollectionDataSource,UICollectionViewDelegate>
{
    BOOL _dragging; //是否拖动中
}

@property (nonatomic, strong) ASCollectionNode *collectionNode;
@property (nonatomic, strong) NSArray *bannerItems;
@end

@implementation LGBannerNode
- (instancetype)initWithModel:(id)model {
    self = [super init];
    _bannerItems = model;
    [self setupWithModel:model];
    return self;
}

- (void)setupWithModel:(id)model {
    _numOfItems = self.bannerItems.count;
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    flowLayout.itemSize = CGSizeZero;
    flowLayout.sectionInset = UIEdgeInsetsMake(0, 20, 0, 20);
    flowLayout.minimumLineSpacing = 5;
    flowLayout.minimumInteritemSpacing = 0;
    _collectionNode = [[ASCollectionNode alloc] initWithCollectionViewLayout:flowLayout];
    _collectionNode.delegate = self;
    _collectionNode.dataSource = self;
//    _collectionNode.view.pagingEnabled = YES;
    _collectionNode.view.showsHorizontalScrollIndicator = NO;
    [self addSubnode:_collectionNode];
}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize {
    ASInsetLayoutSpec *insetSpec = [ASInsetLayoutSpec insetLayoutSpecWithInsets:UIEdgeInsetsMake(0, 0, 0, 0) child:_collectionNode];
    return insetSpec;
}


#pragma mark - ASCollectionDelegate  &  ASCollectionDataSource
- (NSInteger)numberOfSectionsInCollectionNode:(ASCollectionNode *)collectionNode {
    return 1;
}
- (NSInteger)collectionNode:(ASCollectionNode *)collectionNode numberOfItemsInSection:(NSInteger)section {
    return self.bannerItems.count;
}
- (ASSizeRange)collectionNode:(ASCollectionNode *)collectionNode constrainedSizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return ASSizeRangeMake(CGSizeMake(335, 148));
}
- (ASCellNode *)collectionNode:(ASCollectionNode *)collectionNode nodeForItemAtIndexPath:(NSIndexPath *)indexPath {
    LGRRBannerCellNode *node = [[LGRRBannerCellNode alloc] initWithModel:self.bannerItems[indexPath.item]];
    return node;
}

#pragma mark - UICollectionView Delegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (_dragging) {
        return;
    }
    NSUInteger index = round(scrollView.contentOffset.x/scrollView.frame.size.width);
    if (index >= self.bannerItems.count) {
        return;
    }
//    CGFloat delta = 335 + 5;
//    [self.collectionNode scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0] atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:NO];
//    [UIView animateWithDuration:.3f delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
//        [self.collectionNode setContentOffset:CGPointMake(delta*index, 0) animated:NO];
//    } completion:nil];
    
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    _dragging = YES;
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(.1f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        _dragging = NO;
//    });
}
@end
