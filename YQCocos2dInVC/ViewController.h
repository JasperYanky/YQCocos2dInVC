//
//  ViewController.h
//  YQCocos2dInVC
//
//  Created by Yin Qiang on 13-4-1.
//  Copyright (c) 2013年 YinQiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YQViewController.h"
#import "YQCCScene.h"

/*  
 *  You need to add cocos2d libs 
 *  And add these frameworks to support cocos2d 
 *
 *  CoreMotion.framework
 *  QuartzCore.framework
 *  OpenGLES.framework
 *  OpenAL.framework
 *  AudioToolbox.framework
 *  AVFoundation.framework
 *  
 *  There are something else to do in Build Settings ,especially in Header Search Paths
 *  You can modify those according to a new cocos2d project.
 *
 *  mark by Jasper 
 */

@interface ViewController : UIViewController
{
    
  
}
@property (assign, nonatomic) UIWindow *window;
@end
