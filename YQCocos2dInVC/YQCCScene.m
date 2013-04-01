//
//  YQCCScene.m
//  YQCocos2dInVC
//
//  Created by Yin Qiang on 13-4-1.
//  Copyright 2013年 YinQiang. All rights reserved.
//

#import "YQCCScene.h"



@implementation YQCCScene

+(CCScene *)scene
{
    CCScene *scene = [CCScene node];
    YQCCScene *layer = [YQCCScene node];
    
    [scene addChild:layer];
    
    return scene;   
}

-(id) init
{
    self = [super init];
    if (self) {
        CCLayerColor* colorLayer = [CCLayerColor layerWithColor:ccc4(0,255,255,255)];
        [self addChild:colorLayer z:0];
              
        CCLabelTTF *label = [CCLabelTTF labelWithString:@"Hello World" fontName:@"Marker Felt" fontSize:64];
		CGSize size = [[CCDirector sharedDirector] winSize];
        label.position =  ccp( size.width /2 , size.height/2 );
		[self addChild: label];

        
        
        
        
    }
    return self;
}

@end
