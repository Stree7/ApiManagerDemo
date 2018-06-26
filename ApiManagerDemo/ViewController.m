//
//  ViewController.m
//  ApiManagerDemo
//
//  Created by LimeGah on 2018/6/12.
//  Copyright © 2018年 LimeGah. All rights reserved.
//

#import "ViewController.h"
#import "LGNetwork.h"
#import "LGDemoService.h"


@interface ViewController () <LGNetworkDelegate>
@property (nonatomic, strong) LGApiManager *manager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [self startRequest];
}

- (void)startRequest {
//    [self.manager start];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)rrTap:(UIButton *)sender {
    [self.navigationController pushViewController:[NSClassFromString(@"LGRRViewController") new] animated:YES];
}

- (IBAction)songListTap:(UIButton *)sender {
    [self.navigationController pushViewController:[NSClassFromString(@"LGSongListViewController") new] animated:YES];
}


#pragma mark - getters && setters
- (LGApiManager *)manager {
    if (!_manager) {
        _manager = [LGApiManager new];
        _manager.delegate = self;
        _manager.service = [LGDemoService new];
        _manager.serviceIdentifier = ServiceCategoryFirstLevelIdentifier;
        _manager.params =@{@"serviceType":@"INSTALL",@"storeId":@"997787176116850690"};
        _manager.token = @"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOlsibW9ub2xpdGhpYy1hcHAiXSwidXNlcl9uYW1lIjoiMTM1OTA1ODkwNzgiLCJzY29wZSI6WyJhbGwiXSwiZXhwIjoxNTI4OTQyOTU2LCJhdXRob3JpdGllcyI6WyJST0xFX1NUT1JFIl0sImp0aSI6ImI1ZTNhYjliLTQ1YmYtNDRmMC1hNTM2LTVhNmQ5NmMxNTc1YiIsImNsaWVudF9pZCI6ImFwcC1jbGllbnQifQ.fb3eyMKna2VNXEhXKQWu1gSuqoIYoW64Mp60kDHg4eg";
//        _manager.requestSerializer = LGNetworkJSONRequestSerializer;
    }
    return _manager;
}

#pragma mark - LGNetworkDelegate
//1.成功回调的方法
- (void)managerCallAPIDidSuccess:(LGApiManager * _Nonnull)manager {
    
}
//2.失败回调的方法
- (void)managerCallAPIDidFailed:(LGApiManager * _Nonnull)manager {
    
}
@end
