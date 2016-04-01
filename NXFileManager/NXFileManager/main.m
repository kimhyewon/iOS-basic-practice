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
    
        NSLog(@"name : %@", [pm personNameAtIndex:1]);
        NSLog(@"number : %@", [pm personNumberAtIndex:1]);
        NSLog(@"gender : %hhd", [pm isMaleAtIndex:1]);
        NSLog(@"team : %@", [pm personTeamAtIndex:1]);
        NSLog(@"personObject %@", [pm getPersonObjectAtIndex:1]);
        
        NSLog(@"find person name by number : %@",[pm findPersonNameByNumber:[NSNumber numberWithInt:131022]]);
        NSLog(@"find person number by name : %@",[pm findPersonNumberByName:@"김혜원"]);

    }
    return 0;
}
