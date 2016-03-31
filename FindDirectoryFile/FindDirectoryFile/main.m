//
//  main.m
//  FindDirectoryFile
//
//  Created by GraceLilac on 2016. 3. 31..
//  Copyright (c) 2016년 GraceLilac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NXFindDirectoryFile.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NXFindDirectoryFile *fdf = [[NXFindDirectoryFile alloc] init];
//        [fdf NXDisplayAllFilesAtPath:@"/Users/gracelilac/Documents"];
        [fdf NXDisplayAllFilesAtPath:@"/Users/gracelilac/Documents" filterByExtension:@"png"];

    }
    return 0;
}
