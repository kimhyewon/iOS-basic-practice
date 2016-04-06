//
//  SecondViewController.m
//  ViewControllerJsonPracticeOnlyCode
//
//  Created by GraceLilac on 2016. 4. 7..
//  Copyright (c) 2016년 GraceLilac. All rights reserved.
//

#import "SecondViewController.h"
#import "DetailViewController.h"

@interface SecondViewController ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 80, 50)]; //버튼을 만든다
    [self.button setTitle:(NSString *)@"Button" forState:UIControlStateNormal]; //버튼의 타이틀 지정
    [self.button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal]; //버튼 타이틀 색깔 지정
    
    [self.view addSubview:self.button]; //현재 뷰의 하위 뷰로 버튼 지정
    
    [self.button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside]; //버튼 클릭시 타겟 지정
}

//버튼 클릭시 DetailViewController present
- (void)buttonClicked:(UIButton*)sender
{
    DetailViewController *dvc = [[DetailViewController alloc] init];
    [self presentViewController:dvc animated:YES completion:nil];
}

@end


