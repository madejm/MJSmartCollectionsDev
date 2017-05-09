//
//  MJSmartArray.m
//  Smart Collections
//
//  Created by Mejdej on 05/05/17.
//  Copyright (c) 2017 Mejdej. All rights reserved.
//

#import "MJSmartArray.h"
#import "MJNull.h"
#import "__MJStop.h"

@implementation MJSmartArray

+ (NSArray *)arrayWithObjects:(id)firstArg, ...
{
    va_list args;
    va_start(args, firstArg);
    id array = [self arrayWithNull:NO firstObject:firstArg objects:args];
    va_end(args);
    
    return array;
}

+ (NSMutableArray *)mutableArrayWithObjects:(id)firstArg, ...
{
    va_list args;
    va_start(args, firstArg);
    id array = [self arrayWithNull:NO firstObject:firstArg objects:args];
    va_end(args);
    
    return array;
}

+ (NSArray *)arrayWithNullObjects:(id)firstArg, ...
{
    va_list args;
    va_start(args, firstArg);
    id array = [self arrayWithNull:YES firstObject:firstArg objects:args];
    va_end(args);
    
    return array;
}

+ (NSMutableArray *)mutableArrayWithNullObjects:(id)firstArg, ...
{
    va_list args;
    va_start(args, firstArg);
    id array = [self arrayWithNull:YES firstObject:firstArg objects:args];
    va_end(args);
    
    return array;
}

+ (NSMutableArray *)arrayWithNull:(BOOL)allowNull firstObject:(id)firstArg objects:(va_list)args
{
    NSMutableArray *array = [NSMutableArray new];
    
    for (id arg = firstArg; [arg class] != [__MJStop class]; arg = va_arg(args, id))
    {
        if (arg != nil)
        {
            [array addObject:arg];
        }
        else if (allowNull)
        {
            [array addObject:[MJNull null]];
        }
    }
    
    return array;
}

@end
