//
//  DetailViewController.m
//  
//
//  Created by GraceLilac on 2016. 4. 4..
//
//

#import "DetailViewController.h"
#import "Model.h"


@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *titleField;
@property (nonatomic, strong) Model *model;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [[Model alloc] init];
    NSDictionary *dictionary = [self dictionary];
    
    NSString *imageName = [dictionary objectForKey:@"image"];
    self.titleField.text = [dictionary objectForKey:@"title"];
    self.imageView.image = [UIImage imageNamed:imageName];
}

- (NSDictionary *)dictionary {
    int randomIndex = arc4random() % [self.model arrayCount]; 
    NSDictionary *dictionary = [self.model itemAtIndex:randomIndex];

    return dictionary;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)RandomButtonClicked:(id)sender
{
    NSDictionary *dictionary = [self dictionary];
    NSString *imageName = [dictionary objectForKey:@"image"];
    self.titleField.text = [dictionary objectForKey:@"title"];
    self.imageView.image = [UIImage imageNamed:imageName];
}

@end
