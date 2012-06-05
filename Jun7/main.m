//
//  main.m
//  Jun7
//
//  Created by Michael Grubb on 6/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Jun7AppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        UIDevice *device = [UIDevice currentDevice];
        NSString *version = device.systemVersion;
        NSString *name = device.name;
        NSLog(@"The version of iOS is %@",version);
        NSLog(@"The name of this device is %@",name);
        BOOL multiTask = device.isMultitaskingSupported;
        if (multiTask) {
            NSLog(@"Multitasking is supported on this device.");
        } else { 
            NSLog(@"Multitasking is not supported on this device.");
        }
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([Jun7AppDelegate class]));
    }
}
