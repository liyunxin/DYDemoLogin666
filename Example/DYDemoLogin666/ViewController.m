//
//  ViewController.m
//  DYDemoLogin666
//
//  Created by 李云新 on 2019/8/21.
//  Copyright © 2019年 Lambert. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    __weak typeof(self) weakSelf = self;
    self.navigationItem.rightBarButtonItem = [[KHBarButton rightBtnWithTitle:@"个人信息" Color:[UIColor blackColor] ClickOption:^{
        [weakSelf.navigationController pushViewController:[[CTMediator sharedInstance] ingoVC] animated:YES];
    }] getBarItem];
    
    self.navigationItem.leftBarButtonItem = [[KHBarButton leftBtnWithTitle:@"关于我们" Color:[UIColor blackColor] ClickOption:^{
        NSString *urlStr = @"dydemo666://DYDemoLogin/AboutVC?name=heiheihei";
        UIViewController *vc = [[CTMediator sharedInstance] performActionWithUrl:[NSURL URLWithString:urlStr] completion:nil];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    }] getBarItem];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __weak typeof(self) weakSelf = self;
        [self presentViewController:[DYDemoLogin dy_goLogin:^{
            weakSelf.navigationItem.title = [DYDemoLoginData share].userName;
        }] animated:YES completion:nil];
    });
}

@end
