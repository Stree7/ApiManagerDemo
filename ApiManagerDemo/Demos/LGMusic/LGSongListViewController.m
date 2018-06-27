//
//  LGSongListViewController.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/23.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "LGSongListViewController.h"

#import <AsyncDisplayKit/AsyncDisplayKit.h>
#import "LGSongListApiManager.h"
#import "Song.h"
#import "LGSongListNode.h"
@interface LGSongListViewController ()<ASTableDelegate,ASTableDataSource,LGNetworkDelegate>
@property (nonatomic, strong) ASTableNode *tableNode;
@property (nonatomic, strong) LGSongListApiManager *manager;
@property (nonatomic, strong) NSMutableArray <Song*>*songs;
@end

@implementation LGSongListViewController
- (instancetype)init {
    self = [super initWithNode:[ASDisplayNode new]];
    return self;
}
#pragma mark - Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.node addSubnode:self.tableNode];
    [self.manager start];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    self.tableNode.frame = self.view.bounds;
}

#pragma mark - LGApiManager
//1.成功回调的方法
- (void)managerCallAPIDidSuccess:(LGApiManager * _Nonnull)manager {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSString *responseStr = manager.response.JSONString;
        responseStr = [responseStr substringWithRange:NSMakeRange(12, responseStr.length-14)];
        NSDictionary *responseJSON = [NSJSONSerialization JSONObjectWithData:[responseStr dataUsingEncoding:NSUTF8StringEncoding] options:0 error:NULL];
        NSArray *songArray = responseJSON[@"song_list"];
        for (id songDict in songArray) {
            Song *song = [[Song alloc] initWithDictionary:songDict];
            [self.songs addObject:song];
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableNode reloadData];
        });
    });
}
//2.失败回调的方法
- (void)managerCallAPIDidFailed:(LGApiManager * _Nonnull)manager {
    
}

#pragma mark - ASTableDelegate & ASTableDataSource
- (NSInteger)numberOfSectionsInTableNode:(ASTableNode *)tableNode {
    return 1;
}

- (NSInteger)tableNode:(ASTableNode *)tableNode numberOfRowsInSection:(NSInteger)section {
    return self.songs.count;
}

- (ASCellNodeBlock)tableNode:(ASTableNode *)tableNode nodeBlockForRowAtIndexPath:(NSIndexPath *)indexPath {
    Song *song = self.songs[indexPath.row];
    return ^ {
        LGSongListNode *songCellNode = [[LGSongListNode alloc] initWithModel:song];
        return songCellNode;
    };
}

- (ASSizeRange)tableView:(ASTableView *)tableView constrainedSizeForRowAtIndexPath:(NSIndexPath *)indexPath {
    return ASSizeRangeMake(CGSizeMake([UIScreen mainScreen].bounds.size.width, 60),
                           CGSizeMake([UIScreen mainScreen].bounds.size.width, INFINITY));
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"qq music";
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UILabel *label = (id)[tableView headerViewForSection:section];
    label.font = [UIFont systemFontOfSize:14];
    return label;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 20;
}


#pragma mark - Getters
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

- (LGSongListApiManager *)manager {
    if (!_manager) {
        _manager = [LGSongListApiManager new];
        _manager.delegate = self;
    }
    return _manager;
}

- (NSMutableArray<Song *> *)songs {
    if (!_songs) {
        _songs = [@[] mutableCopy];
    }
    return _songs;
}


@end
