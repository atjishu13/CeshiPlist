//
//  ATViewController.m
//  Ceshi
//
//  Created by antong on 14-1-20.
//  Copyright (c) 2014年 山东乐世安通通信技术有限公司. All rights reserved.
//

#import "ATViewController.h"
#import "UIDevice+IdentifierAddition.h"
@interface ATViewController ()

@end

@implementation ATViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 300, 100)];
    label.numberOfLines = 0;
    label.textAlignment = NSTextAlignmentCenter;
    label.text = [NSString stringWithFormat:@"Unique Device Identifier:\n%@",
                  [[UIDevice currentDevice] uniqueDeviceIdentifier]];
    
    [self.view addSubview:label];
//    [label release];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(10, 210, 300, 100)];
    label.numberOfLines = 0;
    label.textAlignment = NSTextAlignmentCenter;
    label.text = [NSString stringWithFormat:@"Unique GLOBAL Device Identifier:\n%@",
                  [[UIDevice currentDevice] uniqueGlobalDeviceIdentifier]];
    
    [self.view addSubview:label];
//    [label release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
