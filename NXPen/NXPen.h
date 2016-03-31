//
//  NXPen.h
//  
//
//  Created by GraceLilac on 2016. 3. 31..
//
//

#import <Foundation/Foundation.h>

@interface NXPen : NSObject
// 인스턴스 변수 선언
{
    NSString* _brand;
    NSString* _color;
    int _usage;
}

// 생성자 선언
- (id)initWithBrand:(NSString *)aBrand;

// setter, getter 메소드
- (void)setBrand:(NSString *)brand;
- (NSString *)brand;

- (void)setColor:(NSString *)color;
- (NSString *)color;

- (void)setUsage:(int)usage;
- (int)usage;

//display
-(void)printDescription;

@end
