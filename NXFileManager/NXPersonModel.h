//
//  NXPersonModel.h
//  
//
//  Created by GraceLilac on 2016. 4. 1..
//
//

#import <Foundation/Foundation.h>

@interface NXPersonModel : NSObject

- (instancetype)initWithPath:(NSString *)path;

- (void)storeData:(NSString *)path;

- (NSString *)personNameAtIndex:(int)index;
- (NSNumber *)personNumberAtIndex:(int)index;
- (BOOL)isMaleAtIndex:(int)index;
- (NSNumber *)personTeamAtIndex:(int)index;
- (NSDictionary *)getPersonObjectAtIndex:(int)index;


@end
