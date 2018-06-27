//
//  ViewController.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/12.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (nonatomic, strong) NSArray *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.rowHeight = 100;
    self.tableView.estimatedSectionFooterHeight = DBL_EPSILON;
    self.tableView.estimatedSectionHeaderHeight = DBL_EPSILON;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView Delegate & Datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"UITableViewCell"];
    cell.imageView.image = [UIImage imageNamed:self.dataArray[indexPath.row][@"icon"]];
    cell.textLabel.text = self.dataArray[indexPath.row][@"name"];
    CGRect frame = cell.imageView.frame;
    frame.size = CGSizeMake(40, 40);
    cell.imageView.frame = frame;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.navigationController pushViewController:[NSClassFromString(self.dataArray[indexPath.row][@"target"]) new] animated:YES];
}


- (IBAction)rrTap:(UIButton *)sender {
    [self.navigationController pushViewController:[NSClassFromString(@"LGRRViewController") new] animated:YES];
}

- (IBAction)songListTap:(UIButton *)sender {
    [self.navigationController pushViewController:[NSClassFromString(@"LGSongListViewController") new] animated:YES];
}


#pragma mark - Getters
- (NSArray *)dataArray {
    if (!_dataArray) {
        _dataArray = @[
                       @{
                           @"target":@"LGRRViewController",
                           @"name":@"人人视频",
                           @"icon":@"rr_AppIcon60x60",
                           },
                       @{
                           @"target":@"LGSongListViewController",
                           @"name":@"龙珠音乐",
                           @"icon":@"lg_app_60",
                           },
                       ];
    }
    return _dataArray;
}
@end
