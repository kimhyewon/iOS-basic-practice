//
//  FirstViewController.m
//  ViewControllerJsonPractice
//
//  Created by GraceLilac on 2016. 4. 4..
//  Copyright (c) 2016년 GraceLilac. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//버튼 클릭시 카메라롤 보여주기
- (IBAction)ShowCameraroll:(id)sender
{
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    
    //카메라가 있는 장치라면 사진을 찍고 아니면 사진라이브러리에서 가져온다.
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    } else {
        imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    }
    imagePicker.delegate = self; //FirstViewController를 이미지 피커의 델리게이트로 설정
    
    [self presentViewController:imagePicker animated:YES completion:nil]; //화면에 이미지 피커를 표시한다.
}

//사진을 선택할 때 이미지 피커의 델리게이트에 보내진다.
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image = info[UIImagePickerControllerOriginalImage]; //info 딕셔너리에서 선택된 이미지를 가져온다.
    
    self.imageView.image = image; //이미지뷰에 이미지를 넣는다.
    [self dismissViewControllerAnimated:YES completion:nil]; //이미지 피커를 화면에서 사라지게 한다.
}


@end
