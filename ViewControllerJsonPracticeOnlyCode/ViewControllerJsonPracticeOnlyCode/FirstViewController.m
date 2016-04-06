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
@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 80, 50)]; //버튼을 만든다
    [self.button setTitle:(NSString *)@"Picker" forState:UIControlStateNormal]; //버튼의 타이틀 지정
    [self.button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal]; //버튼 타이틀 색깔 지정 
    
    [self.button addTarget:self action:@selector(showCameraRoll:) forControlEvents:UIControlEventTouchUpInside]; //버튼 클릭시 타겟 지정

    [self.view addSubview:self.button]; //현재 뷰의 하위 뷰로 버튼 지정
}

//버튼 클릭 시 카메라 롤 보여주기
- (void)showCameraRoll:(UIButton*)sender
{
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init]; //create image picker
    
    //카메라가 있는 장치라면 사진을 찍고 아니면 사진라이브러리에서 가져온다.
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    } else {
        imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    }
    imagePicker.delegate = self; //FirstViewController를 이미지 피커의 델리게이트로 설정
    
    [self presentViewController:imagePicker animated:YES completion:nil]; //화면에 이미지 피커를 표시한다.
}

//사진을 선택하면 imageView에 선택한 사진을 보여주기
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image = info[UIImagePickerControllerOriginalImage]; //info 딕셔너리에서 선택된 이미지를 가져온다.
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 200, 300, 200)]; //imageView init
    self.imageView.image = image; //이미지뷰에 이미지를 넣는다.
    [self.view addSubview:self.imageView]; //현재 뷰의 하위 뷰로 imageView 설정
    [self dismissViewControllerAnimated:YES completion:nil]; //이미지 피커를 화면에서 사라지게 한다.
}

@end
