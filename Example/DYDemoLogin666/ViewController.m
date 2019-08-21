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
    self.view.layer.contentsGravity = kCAGravityResizeAspect;
    self.view.layer.contents = (id)[DYDemoTools getToolsBundleImage:@"img1"].CGImage;
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
