//
//  ViewController.m
//  MasonryDemo
//
//  Created by 王展 on 15/11/15.
//  Copyright © 2015年 王展. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *blackView = [[UIView alloc] init];
    blackView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:blackView];
    
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    UIView *blueView = [[UIView alloc] init];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    UIView *yellowView = [[UIView alloc] init];
    yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:yellowView];
    
    // setup constraints
    [blackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(20);
        make.top.equalTo(self.view).with.offset(20);
    }];
    
    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(20);
        make.top.equalTo(blackView.mas_bottom).with.offset(20);
        make.bottom.equalTo(self.view).with.offset(-20);
        make.width.equalTo(blackView);
        make.height.equalTo(blackView);
    }];
    
    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(blackView.mas_right).with.offset(20);
        make.top.equalTo(self.view).with.offset(20);
        make.right.equalTo(self.view).with.offset(-20);
        make.size.equalTo(blackView);
    }];
    
    [yellowView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(redView.mas_right).with.offset(20);
        make.right.equalTo(self.view).with.offset(-20);
        make.bottom.equalTo(self.view).with.offset(-20);
        make.size.equalTo(blackView);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
