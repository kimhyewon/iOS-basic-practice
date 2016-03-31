//
//  main.m
//  NXPen
//
//  Created by GraceLilac on 2016. 3. 31..
//  Copyright (c) 2016년 GraceLilac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NXPen.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NXPen* pen = [[NXPen alloc] initWithBrand:@"monami"];
        [pen printDescription];
        
        [pen setBrand:@"sharp"];
        [pen setColor:@"red"];
        [pen setUsage:50];
        [pen printDescription];

    }
    return 0;
}
