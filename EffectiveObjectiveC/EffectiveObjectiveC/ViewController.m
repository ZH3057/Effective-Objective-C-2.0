//
//  ViewController.m
//  EffectiveObjectiveC
//
//  Created by Jun Zhou on 2018/8/30.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    [super loadView];
    NSLog(@"root loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"root viewDidLoad");
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"root viewWillAppear");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"root viewDidAppear");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"root viewDidDisappear");
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"root viewWillDisappear");
}

- (IBAction)nextButtonClick:(UIButton *)sender {
    AViewController *a = [[AViewController alloc] init];
    [self.navigationController pushViewController:a animated:YES];
    
}


@end
