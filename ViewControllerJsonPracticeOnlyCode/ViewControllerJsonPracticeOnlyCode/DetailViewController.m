//
//  DetailViewController.m
//  
//
//  Created by GraceLilac on 2016. 4. 7..
//
//

#import "DetailViewController.h"
#import "Model.h"

@interface DetailViewController ()

@property (nonatomic, strong) Model *model;
@property (nonatomic, strong) UILabel *titleField;
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIButton *button;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self view] setBackgroundColor:[UIColor whiteColor]];
    
    self.titleField = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 200, 100)];
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 200, 300, 200)];
    
    self.model = [[Model alloc] init];
    
    int randomIndex = arc4random() % [self.model arrayCount];
    NSDictionary *dictionary = [self.model itemAtIndex:randomIndex];
    
    [[self view] addSubview:self.titleField];
    [[self view] addSubview:self.imageView];
    
    NSString *imageName = [dictionary objectForKey:@"image"];
    self.titleField.text = [dictionary objectForKey:@"title"];
    self.imageView.image = [UIImage imageNamed:imageName];

}


@end
