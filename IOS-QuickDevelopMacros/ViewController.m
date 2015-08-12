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
    
    VDLog(@"log %@", VDKeyPath(self, test));
    
    VDWeakifySelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        VDStrongifySelf;
        [self test];
    });
    
    VDKeyPath(self, test);
    
    VDStringFormat(@"%@", self);
    VDIdentifier;
    
    VDStringYES;
    VDStringNO;
    VDStringLineBreaker;
    
    VDBOOLToString(YES);
    
    int many[] = {1,2,3};
    VDArrayCount(many, int);
    
    VDRGBColor(255.0f, 255.0f, 255.0f);
    VDRGBAColor(255.0f, 255.0f, 255.0f, 1.0f);
    VDColorFromRGB(0xFFFFFF);
    VDColorFromRGBA(0xFFFFFF00);
    
}

+ (void)print:(ViewController *)vc {
    VDLog(@"%@", VDKeyPath(vc, test));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
