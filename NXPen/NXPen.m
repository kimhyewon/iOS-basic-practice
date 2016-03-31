//
//  NXPen.m
//  
//
//  Created by GraceLilac on 2016. 3. 31..
//
//

#import "NXPen.h"

@implementation NXPen

- (id)initWithBrand:(NSString *)aBrand
{
    self = [super init];
    
    if(self!=nil) {
        _brand = aBrand;
    }
    return self;
}

// setter, getter 메소드
- (void)setBrand:(NSString *)brand
{
    _brand = brand;
}

- (NSString *)brand
{
    return _brand;
}

- (void)setColor:(NSString *)color
{
    _color = color;
}

- (NSString *)color
{
    return _color;
}

- (void)setUsage:(int)usage
{
    _usage = usage;
}

- (int)usage
{
    return _usage;
}

//display
-(void)printDescription
{
    NSLog(@"brand : %@, color : %@, usage : %d", _brand, _color, _usage);
}

@end
