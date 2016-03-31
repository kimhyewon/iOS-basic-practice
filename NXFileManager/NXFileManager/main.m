//
//  main.m
//  NXFileManager
//
//  Created by GraceLilac on 2016. 4. 1..
//  Copyright (c) 2016년 GraceLilac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NXPersonModel.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *path = @"/Users/gracelilac/Documents/2016-1/iOS/persons.txt";
        NXPersonModel *pm = [[NXPersonModel alloc] initWithPath:path];
        
        [pm personNameAtIndex:1];
        [pm personNumberAtIndex:1];
        [pm isMaleAtIndex:1];
        [pm personTeamAtIndex:1];
        [pm getPersonObjectAtIndex:1];
        
        
        NSLog(@"name : %@", [pm personNameAtIndex:1]);
        NSLog(@"number : %@", [pm personNumberAtIndex:1]);
        NSLog(@"gender : %hhd", [pm isMaleAtIndex:1]);
        NSLog(@"team : %@", [pm personTeamAtIndex:1]);
        NSLog(@"personObject %@", [pm getPersonObjectAtIndex:1]);
                 
    }
    return 0;
}
