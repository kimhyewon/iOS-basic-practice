//
//  SecondViewController.m
//  ViewControllerJsonPractice
//
//  Created by GraceLilac on 2016. 4. 4..
//  Copyright (c) 2016년 GraceLilac. All rights reserved.
//

#import "SecondViewController.h"
#import "Model.h"
#import "DetailViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//버튼을 누르면 random하게 특정 index의 NSDictionary를 DetailViewController 속성으로 복사하고 DetailViewController를 푸시 
- (IBAction)buttonClicked:(id)sender {
    Model *model = [[Model alloc] init];
    int randomIndex = arc4random() % 4; //4대신 array length를 해야한다.
    NSDictionary *dictionary = [model itemAtIndex:randomIndex];
    
    DetailViewController *detailViewCon = [[DetailViewController alloc] init];
    
    BNRItem *newItem = [[BNRItemStore sharedStore] createItem];
    
    @property (weak, nonatomic) IBOutlet UIImageView *imageView;
    
    imageView.image = [dictionary objectForKey:@"image"];
    titleField.text = [dictionary objectForKey:@"title"];
    
    
}

@end
