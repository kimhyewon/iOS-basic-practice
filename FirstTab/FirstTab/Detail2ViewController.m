//
//  Detail2ViewController.m
//  
//
//  Created by GraceLilac on 2016. 4. 2..
//
//

#import "Detail2ViewController.h"

@interface Detail2ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation Detail2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)returned:(UIButton *)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
