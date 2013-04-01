//
//  ViewController.m
//  YQCocos2dInVC
//
//  Created by Yin Qiang on 13-4-1.
//  Copyright (c) 2013年 YinQiang. All rights reserved.
//

#import "ViewController.h"
#import "cocos2d.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize window;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    /* mark by Jasper 
     *
     * You maybe need creat a CCGLView that is a Subview of the UIViewController's View
     * to run Cocos2d Scenes and Layers.
     * so,there is the test code.
     */
    
    
    
    CGSize size = [CCDirector sharedDirector].winSize;
    
    NSLog(@"size.width %f", size.width);
    NSLog(@"size.height %f", size.height);
    
    CCGLView *glView = [CCGLView viewWithFrame: CGRectMake(0,0,  1024,748)
                                   pixelFormat:kEAGLColorFormatRGB565	//kEAGLColorFormatRGBA8
                                   depthFormat:0	//GL_DEPTH_COMPONENT24_OES
                            preserveBackbuffer:NO
                                    sharegroup:nil
                                 multiSampling:NO
                               numberOfSamples:0];
    
    YQViewController * viewController = [[YQViewController alloc] init];
    viewController.view.frame =  self.view.frame;
    
    [viewController.view addSubview:glView];
    
    
    // Default texture format for PNG/BMP/TIFF/JPEG/GIF images
	// It can be RGBA8888, RGBA4444, RGB5_A1, RGB565
	// You can change anytime.
    [CCTexture2D setDefaultAlphaPixelFormat:kCCTexture2DPixelFormat_RGBA8888];
    
    // initialize cocos2d director
    CCDirectorIOS* director = (CCDirectorIOS*)[CCDirector sharedDirector];
    director.wantsFullScreenLayout = YES;
    director.projection = kCCDirectorProjection2D;
    director.animationInterval = 1.0 / 60.0;
    director.displayStats = YES;

    [director enableRetinaDisplay:NO];
    
    NSLog(@"size.width %f", size.width);
    NSLog(@"size.height %f", size.height);
    
    NSArray* subviews = viewController.view.subviews;
    for (int i = 0; i < subviews.count; i++)
    {
        UIView* subview = [subviews objectAtIndex:i];
        if ([subview isKindOfClass:[CCGLView class]])
        {
            director.view = (CCGLView*)subview;
            
            // so , it is the CCGLView  as a subview of the YQViewController
            [director runWithScene:[YQCCScene scene]];
            break;
        }
    }
 
    [self.view addSubview:viewController.view];
   
  
    
}
// added by Jasper
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft || toInterfaceOrientation==UIInterfaceOrientationLandscapeRight);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
