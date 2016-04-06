//
//  Model.m
//  
//
//  Created by GraceLilac on 2016. 4. 7..
//
//

#import "Model.h"

@interface Model ()

@property (nonatomic, strong) NSArray *jsonArray;

@end

@implementation Model

- (instancetype)init
{
    self = [super init];
    
    if(self) {
        [self initJsonToArray];
    }
    return self;
}

//json txt 파일을 serialization해서 array에 저장
- (void)initJsonToArray
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"" ofType:@"txt"]; //jsonText.txt의 path 불러오기
    NSFileManager *manager = [[NSFileManager alloc] init]; //file manager init
    NSData *jsonData = [manager contentsAtPath:path]; //path에 있는 데이터 저장
    self.jsonArray = [NSJSONSerialization JSONObjectWithData:jsonData options: NSJSONReadingMutableContainers error:nil]; //data serialization to array
}

//index에 해당하는 dictionary return
- (NSDictionary*)itemAtIndex:(int)index
{
    NSString *object = [self.jsonArray objectAtIndex:index];
    
    NSString *title = [object valueForKey:@"title"];
    NSString *image = [object valueForKey:@"image"];
    NSString *content = [object valueForKey:@"content"];
    NSDictionary *comments = [object valueForKey:@"comments"];
    
    NSDictionary *dictionary = @{@"title":title, @"image":image, @"content":content, @"comments":comments};
    
    return dictionary;
}

//jsonArray의 count를 return
- (int)arrayCount
{
    return self.jsonArray.count;
}

@end
