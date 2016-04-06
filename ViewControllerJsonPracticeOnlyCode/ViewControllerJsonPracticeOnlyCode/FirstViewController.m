//
//  FirstViewController.m
//  ViewControllerJsonPracticeOnlyCode
//
//  Created by GraceLilac on 2016. 4. 7..
//  Copyright (c) 2016년 GraceLilac. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 50, 50)]; //버튼을 만든다
    [self.button setBackgroundColor:[UIColor redColor]]; //버튼의 background color 지정
    
    [self.button addTarget:self action:@selector(showCameraRoll:) forControlEvents:UIControlEventTouchUpInside]; //버튼 클릭시 타겟 지정

    [self.view addSubview:self.button]; //현재 뷰의 하위 뷰로 버튼 지정
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showCameraRoll:(UIButton*)sender
{
    NSLog(@"hi");
}

@end
