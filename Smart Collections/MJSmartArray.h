//
//  MJSmartArray.h
//  Smart Collections
//
//  Created by Mejdej on 05/05/17.
//  Copyright (c) 2017 Mejdej. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MJSmartArray : NSObject

+ (NSArray *)arrayWithObjects:(id)firstArg, ...;
+ (NSArray *)arrayWithNullObjects:(id)firstArg, ...;

+ (NSMutableArray *)mutableArrayWithObjects:(id)firstArg, ...;
+ (NSMutableArray *)mutableArrayWithNullObjects:(id)firstArg, ...;

@end
