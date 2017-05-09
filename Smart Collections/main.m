//
//  main.m
//  Smart Collections
//
//  Created by Mejdej on 05/05/17.
//  Copyright (c) 2017 Mejdej. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MJSmartCollections.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        id array = MAnull(@"Fuck", @"the", @"police", nil, @"comming", @"strignt", nil, @"from", @"the", @"underground");
        
        NSLog(@"%@", array);
    }
    return 0;
}
