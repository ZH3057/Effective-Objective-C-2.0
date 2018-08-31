//
//  BViewController.m
//  EffectiveObjectiveC
//
//  Created by Jun Zhou on 2018/8/31.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)loadView {
    [super loadView];
    NSLog(@"B loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"B viewDidLoad");
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"B viewWillAppear");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"B viewDidAppear");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"B viewDidDisappear");
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"B viewWillDisappear");
}

@end
