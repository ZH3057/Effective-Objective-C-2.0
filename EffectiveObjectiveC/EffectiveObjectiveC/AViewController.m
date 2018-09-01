//
//  AViewController.m
//  EffectiveObjectiveC
//
//  Created by Jun Zhou on 2018/8/31.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "AViewController.h"
#import "NSTimer+Block.h"

@interface AViewController ()

@property (nonatomic, strong) NSTimer *timer1;
@property (nonatomic, strong) NSTimer *timer2;

@end

@implementation AViewController

- (void)loadView {
    [super loadView];
    NSLog(@"A loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"A viewDidLoad");
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    __weak typeof(self) weakSelf = self;
//    self.timer1 = [NSTimer timerWithTimeInterval:1 repeats:YES block:^(NSTimer * _Nonnull timer) {
//        [weakSelf print1];
//    }];
//    [[NSRunLoop currentRunLoop] addTimer:self.timer1 forMode:NSDefaultRunLoopMode];
//
//    self.timer2 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:YES block:^(NSTimer * _Nonnull timer) {
//        [weakSelf print2];
//    }];
    
    self.timer1 = [NSTimer b_timerWithTimeInterval:1 repeats:YES inRunLoop:[NSRunLoop currentRunLoop] forMode:(NSDefaultRunLoopMode) block:^(NSTimer *timer) {
        [weakSelf print1];
    }];
    
    self.timer2 = [NSTimer b_scheduledTimerWithTimeInterval:1 repeats:YES block:^(NSTimer *timer) {
        [weakSelf print2];
    }];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"A viewWillAppear");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"A viewDidAppear");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"A viewDidDisappear");
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"A viewWillDisappear");
}

- (void)print1 {
    NSLog(@"timer1 log");
}

- (void)print2 {
    NSLog(@"timer2 log");
}

- (void)dealloc {
    [self.timer1 invalidate];
    [self.timer2 invalidate];
    NSLog(@"%@ delloc", self);
}


@end
