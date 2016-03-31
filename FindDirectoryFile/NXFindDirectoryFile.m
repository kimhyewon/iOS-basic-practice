//
//  NXFindDirectoryFile.m
//  
//
//  Created by GraceLilac on 2016. 3. 31..
//
//

#import "NXFindDirectoryFile.h"

@implementation NXFindDirectoryFile

- (void) NXDisplayAllFilesAtPath:(NSString*)path
{
    NSFileManager *manager = [[NSFileManager alloc] init];
    NSArray *filenames = [manager contentsOfDirectoryAtPath:path error:nil];
    
    for (NSString * filename in filenames)
    {
        NSLog(@"%@", filename);
    }
}

- (void) NXDisplayAllFilesAtPath:(NSString*)path filterByExtension:(NSString*)extension
{
    NSFileManager *manager = [[NSFileManager alloc] init];
    NSDirectoryEnumerator *dirEnum = [manager enumeratorAtPath:path];
 
    while ((path = [dirEnum nextObject])) {
        if ([[path pathExtension] isEqualToString: extension]) {
            NSLog(@"%@", path);
        }
    }
}

@end
