//
//  Model.h
//  
//
//  Created by GraceLilac on 2016. 4. 4..
//
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

@property (nonatomic, strong) NSArray *jsonArray;

- (void)jsonToArray;
- (NSDictionary*)itemAtIndex:(int)index;
- (int)arrayCount;


@end
