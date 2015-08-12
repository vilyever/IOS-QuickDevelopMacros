//
//  ViewController.m
//  IOS-QuickDevelopMacros
//
//  Created by FTET on 15/8/12.
//  Copyright (c) 2015年 vilyever. All rights reserved.
//

#import "ViewController.h"

#import "VDQuickDevelopMacros.h"

@interface ViewController ()

@property (nonatomic, copy) NSString *test ;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[self class] print:self];
}

+ (void)print:(ViewController *)vc {
    VDLog(@"%@", VDKeyPath(vc, test));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
