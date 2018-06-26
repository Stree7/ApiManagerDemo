//
//  LGViewController.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/25.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGRRViewController.h"
#import "LGRRHomeApiManager.h"
#import "LGTodayChoice.h"

#import "LGRRBeanCellNode.h"
#import "LGRRSectionCellNode.h"
#import "LGRRAdvertiseCellNode.h"
#import "LGBannerNode.h"

@interface LGRRViewController () <LGNetworkDelegate,ASTableDelegate,ASTableDataSource>
@property (nonatomic, strong) ASTableNode *tableNode;
@property (nonatomic, strong) LGRRHomeApiManager *manager;
@property (nonatomic, strong) LGTodayChoice *todayChoice;
@end

@implementation LGRRViewController

- (instancetype)init {
    self = [super initWithNode:[ASDisplayNode new]];
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.node.backgroundColor = [UIColor whiteColor];
    [self.node addSubnode:self.tableNode];
    [self.manager start];
    // Do any additional setup after loading the view.
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    self.tableNode.frame = self.node.bounds;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - LGNetworkDelegate
//1.成功回调的方法
- (void)managerCallAPIDidSuccess:(LGApiManager * _Nonnull)manager {
    self.todayChoice = [[LGTodayChoice alloc] initWithDictionary:manager.response.JSONObject[@"data"]];
    UIView *header = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 148)];
    LGBannerNode *bannerNode = [[LGBannerNode alloc] initWithModel:self.todayChoice.bannerTop];
    bannerNode.frame = header.bounds;
    [header addSubnode:bannerNode];
    self.tableNode.view.tableHeaderView = header;
    [self.tableNode reloadData];
}
//2.失败回调的方法
- (void)managerCallAPIDidFailed:(LGApiManager * _Nonnull)manager {
    
}


#pragma mark - ASTableNode delegate & datasource
- (NSInteger)numberOfSectionsInTableNode:(ASTableNode *)tableNode {
    if (!self.todayChoice) {
        return 0;
    }
    return 2;
}

- (NSInteger)tableNode:(ASTableNode *)tableNode numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    }else if (section == 1) {
        return self.todayChoice.sections.count;
    }
    return 0;
}

/*
- (ASCellNodeBlock)tableNode:(ASTableNode *)tableNode nodeBlockForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
        return ^ {
            LGRRBeanCellNode *beanCellNode = [[LGRRBeanCellNode alloc] initWithModel:self.todayChoice.littleBean];
            return beanCellNode;
        };
    }else if (indexPath.section == 1) {
        __block NSUInteger row = indexPath.row;
        return ^{
            LGRRSectionCellNode *videoCellNode = [[LGRRSectionCellNode alloc] initWithModel:self.todayChoice.sections[row]];
            return videoCellNode;
        };
    }
    return ^{
        return [ASCellNode new];;
    };
}*/

- (ASCellNode *)tableNode:(ASTableNode *)tableNode nodeForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
        LGRRBeanCellNode *beanCellNode = [[LGRRBeanCellNode alloc] initWithModel:self.todayChoice.littleBean];
        return beanCellNode;
    }else if (indexPath.section == 1) {
        NSUInteger row = indexPath.row;
        LGSection *section = self.todayChoice.sections[row];
        if ([section.sectionType isEqualToString:@"ALBUM"]||[section.sectionType isEqualToString:@"VIDEO"]) {
            LGRRSectionCellNode *videoCellNode = [[LGRRSectionCellNode alloc] initWithModel:section];
            return videoCellNode;
        }else if ([section.sectionType isEqualToString:@"AD"]) {
            LGRRAdvertiseCellNode *adCellNode = [[LGRRAdvertiseCellNode alloc] initWithModel:section];
            return adCellNode;
        }
        return [ASCellNode new];
    }
    return [ASCellNode new];;
}

- (ASSizeRange)tableView:(ASTableView *)tableView constrainedSizeForRowAtIndexPath:(NSIndexPath *)indexPath {
    return ASSizeRangeMake(CGSizeMake([UIScreen mainScreen].bounds.size.width, DBL_EPSILON),
                           CGSizeMake([UIScreen mainScreen].bounds.size.width, INFINITY));
}

#pragma mark - getters  & setters

- (ASTableNode *)tableNode {
    if (!_tableNode) {
        _tableNode = [[ASTableNode alloc] init];
        _tableNode.delegate = self;
        _tableNode.dataSource = self;
        _tableNode.view.separatorColor = [[UIColor lightGrayColor] colorWithAlphaComponent:.3f];
        _tableNode.view.separatorInset = UIEdgeInsetsMake(0, 8, 0, 0);
    }
    return _tableNode;
}

- (LGRRHomeApiManager *)manager {
    if (!_manager) {
        _manager = [LGRRHomeApiManager new];
        _manager.delegate = self;
    }
    return _manager;
}

@end
