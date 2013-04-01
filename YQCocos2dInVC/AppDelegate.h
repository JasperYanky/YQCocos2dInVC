//
//  AppDelegate.h
//  YQCocos2dInVC
//
//  Created by Yin Qiang on 13-4-1.
//  Copyright (c) 2013年 YinQiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cocos2d.h"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@end
