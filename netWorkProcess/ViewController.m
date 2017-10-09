//
//  ViewController.m
//  netWorkProcess
//
//  Created by giga on 2017/10/9.
//  Copyright © 2017年 深圳市齐家互联网科技有限公司. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    NetWorkProcessView *netWorkView = [[NetWorkProcessView alloc] init];
    netWorkView.frame = CGRectMake(100, 100, 100, 100);
    netWorkView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:netWorkView];
    [netWorkView start];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(30, 30, 30, 30);
    btn.backgroundColor = [UIColor cyanColor];
    [btn setTitle:@"点击停止" forState:UIControlStateNormal];
    [btn sizeToFit];
    [btn addTarget:self action:@selector(clickStop:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)clickStop:(UIButton *)btn
{
    for (UIView *netWorkView in self.view.subviews) {
        
        if ([netWorkView isKindOfClass:[NetWorkProcessView class]]) {
            
            [(NetWorkProcessView *)netWorkView stop];
            
        }
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
