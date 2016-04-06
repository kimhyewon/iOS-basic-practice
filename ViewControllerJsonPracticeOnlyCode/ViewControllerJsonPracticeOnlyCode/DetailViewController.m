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
    
    NSDictionary *dictionary = [self getContensFromDictionary];
    
    [[self view] addSubview:self.titleField];
    [[self view] addSubview:self.imageView];
    
    NSString *imageName = [dictionary objectForKey:@"image"];
    self.titleField.text = [dictionary objectForKey:@"title"];
    self.imageView.image = [UIImage imageNamed:imageName];
    
    //button
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(100, 400, 80, 50)];
    [self.button setTitle:(NSString *)@"Button" forState:UIControlStateNormal]; //버튼의 타이틀 지정
    [self.button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal]; //버튼 타이틀 색깔 지정
    
    [self.view addSubview:self.button]; //현재 뷰의 하위 뷰로 버튼 지정
    
    [self.button addTarget:self action:@selector(ShowrandomContents:) forControlEvents:UIControlEventTouchUpInside]; //버튼 클릭시 타겟 지정

}

//get dictionary
- (NSDictionary *)getContensFromDictionary
{
    int randomIndex = arc4random() % [self.model arrayCount];
    NSDictionary *dictionary = [self.model itemAtIndex:randomIndex];

    return dictionary;
}

//버튼 클릭시 view에 random contents 보여줌
- (void)ShowrandomContents:(UIButton*)sender
{
    NSDictionary *dictionary = [self getContensFromDictionary];
    
    NSString *imageName = [dictionary objectForKey:@"image"];
    self.titleField.text = [dictionary objectForKey:@"title"];
    self.imageView.image = [UIImage imageNamed:imageName];
}


@end
