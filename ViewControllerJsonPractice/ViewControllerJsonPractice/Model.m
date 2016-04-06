//
//  Model.m
//  
//
//  Created by GraceLilac on 2016. 4. 4..
//
//

#import "Model.h"

@implementation Model

-(instancetype)init
{
    self = [super init];
    
    if(self) {
        [self jsonToArray];
    }
    return self;
}

- (void)jsonToArray
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"" ofType:@"txt"];
    
    NSFileManager *manager = [[NSFileManager alloc] init];
    NSData *jsonData = [manager contentsAtPath:path]; //해당 경로에 있는 데이터 저장
    _jsonArray = [NSJSONSerialization JSONObjectWithData:jsonData options: NSJSONReadingMutableContainers error:nil];

}

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

- (int)arrayCount {
    return self.jsonArray.count;
}

@end
