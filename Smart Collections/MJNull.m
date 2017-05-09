//
//  MJNull.m
//  Smart Collections
//
//  Created by Mejdej on 09/05/17.
//  Copyright (c) 2017 Mejdej. All rights reserved.
//

#import "MJNull.h"

@implementation MJNull

+ (instancetype)null
{
    return [MJNull new];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation
{
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)selector
{
    NSMethodSignature *signature = [super methodSignatureForSelector:selector];
    
    if (!signature)
    {
        signature = [self methodSignatureForSelector:@selector(emptySelector)];
    }
    
    return signature;
}

- (void)emptySelector
{
}

- (NSString *)description
{
    return @"(null)";
}

@end
