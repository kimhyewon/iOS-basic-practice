//
//  SecondViewController.m
//  FirstTab
//
//  Created by GraceLilac on 2016. 4. 2..
//  Copyright (c) 2016년 GraceLilac. All rights reserved.
//

#import "SecondViewController.h"
#import "NXPersonModel.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UILabel *personNumberLabel;

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

//학번 찾기 버튼을 누르면 발생
- (IBAction)showPersonNumber:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"" ofType:@"txt"];
    NXPersonModel *pm = [[NXPersonModel alloc] initWithPath:path];
    
    if([pm findPersonNumberByName:_nameField.text]) {   //이름이 존재하는 경우
        self.personNumberLabel.text = [pm findPersonNumberByName:_nameField.text];
    }
    else {
        self.personNumberLabel.text = @"결과 없음";
    }
}

//이름 목록 보기 버튼을 누르면 발생
- (IBAction)showPersonNameList:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"" ofType:@"txt"];
    NXPersonModel *pm = [[NXPersonModel alloc] initWithPath:path];
    NSMutableString *nameList = [[NSMutableString alloc] init];
    

    for(int i=0; i<7; i++) { // pm dictionaryList count로 legth 설정해야함
        [nameList appendString:[pm personNameAtIndex:i]];
        if(i < 6) {
            [nameList appendString:@","];
        }
    }
    
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:@"전체이름"
                                  message:nameList
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
