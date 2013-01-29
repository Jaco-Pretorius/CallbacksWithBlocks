//
//  ViewController.m
//  CallbackWithBlocks
//
//  Created by Jaco on 1/28/13.
//  Copyright (c) 2013 Jaco. All rights reserved.
//

#import "MainViewController.h"
#import "SomeDelegate.h"

@interface MainViewController()
@property (weak, nonatomic) IBOutlet UILabel *callbackLabel;
@end

@implementation MainViewController

- (IBAction)doSomething
{
    SomeDelegate *someDelegate = [[SomeDelegate alloc] initWithCallback:^(NSString *someValue) {
        self.callbackLabel.text = someValue;
    }];
    
    // Assign the delegate to some process
    [someDelegate runAsyncProcess];
}

@end
