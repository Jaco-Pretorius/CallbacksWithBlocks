//
//  SomeDelegate.h
//  CallbackWithBlocks
//
//  Created by Jaco on 1/28/13.
//  Copyright (c) 2013 Jaco. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SomeDelegate : NSObject

- (id)initWithCallback:(void(^)(NSString *someValue))callback;
- (void)runAsyncProcess;

@end
