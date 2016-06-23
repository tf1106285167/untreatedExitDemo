//
//  ViewController.m
//  程序长时间未操作退出
//
//  Created by Simon on 16/2/25.
//  Copyright © 2016年 Pactera. All rights reserved.
//

#import "ViewController.h"
#import "ThirdViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)btnAction {
    [self presentViewController:[ThirdViewController new] animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
