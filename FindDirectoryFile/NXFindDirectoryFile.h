//
//  NXFindDirectoryFile.h
//  
//
//  Created by GraceLilac on 2016. 3. 31..
//
//

#import <Foundation/Foundation.h>

@interface NXFindDirectoryFile : NSObject

- (void) NXDisplayAllFilesAtPath:(NSString*)path;
- (void) NXDisplayAllFilesAtPath:(NSString*)path filterByExtension:(NSString*)extension;

@end
