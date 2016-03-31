//
//  NXPersonModel.m
//  
//
//  Created by GraceLilac on 2016. 4. 1..
//
//

#import "NXPersonModel.h"

@implementation NXPersonModel
{
    NSMutableArray *dictionaryList;
}

- (instancetype)initWithPath:(NSString *)path
{
    self = [super init];
    
    if(self) {
        
        [self storeData:path];
    }
    return self;
}

- (void)storeData:(NSString *)path
{
    NSFileManager *manager = [[NSFileManager alloc] init];
    NSData *data = [manager contentsAtPath:path]; //해당 경로에 있는 데이터 저장
    NSString *stringData = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]; //data 타입에서 string 타입으로 변경
    NSArray *eachPersonData = [stringData componentsSeparatedByString:@"\n"]; //각 사람에 대한 데이터 저장
    
    for(NSString *each in eachPersonData) {
        NSArray *factor = [each componentsSeparatedByString:@","];
       
        NSDictionary *dictionary = @{@"personName":factor[0], @"personNumber":factor[1], @"gender":factor[2], @"team":factor[3]};
        [dictionaryList addObject:dictionary];

    }
    
}


- (NSString *)personNameAtIndex:(int)index
{
    NSDictionary *dictionary = [dictionaryList objectAtIndex:index];
    return [dictionary objectForKey:@"personNane"];
}

- (NSNumber *)personNumberAtIndex:(int)index
{
    NSDictionary *dictionary = [dictionaryList objectAtIndex:index];
    return [dictionary objectForKey:@"personNumber"];
}

- (BOOL)isMaleAtIndex:(int)index
{
    NSDictionary *dictionary = [dictionaryList objectAtIndex:index];
    if([dictionary objectForKey:@"gender"] == 'M') return YES;
    else return NO;
}

- (NSNumber *)personTeamAtIndex:(int)index
{
    NSDictionary *dictionary = [dictionaryList objectAtIndex:index];
    return [dictionary objectForKey:@"team"];
}

- (NSDictionary *)getPersonObjectAtIndex:(int)index
{
    NSDictionary *dictionary = [dictionaryList objectAtIndex:index];
    return dictionary;
}



@end
