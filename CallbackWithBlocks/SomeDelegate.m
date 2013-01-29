//
//  SomeDelegate.m
//  CallbackWithBlocks
//
//  Created by Jaco on 1/28/13.
//  Copyright (c) 2013 Jaco. All rights reserved.
//

#import "SomeDelegate.h"

@implementation SomeDelegate
{
    void(^callback)(NSString *someValue);
}

- (id)initWithCallback:(void(^)(NSString *someValue))handler
{
    self = [super init];
    if (self)
    {
        callback = handler;
    }
    return self;
}

- (void)runAsyncProcess
{
    // Run async process
    callback(@"Value being passed to block");
    callback = nil;
}

@end
