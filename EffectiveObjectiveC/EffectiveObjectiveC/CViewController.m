//
//  CViewController.m
//  EffectiveObjectiveC
//
//  Created by Jun Zhou on 2018/8/31.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "CViewController.h"

@interface CViewController ()

@end

@implementation CViewController

- (void)loadView {
    [super loadView];
    NSLog(@"C loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"C viewDidLoad");
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"C viewWillAppear");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"C viewDidAppear");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"C viewDidDisappear");
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"C viewWillDisappear");
}


@end
