YQCocos2dInVC
=============
将coco2d工程加入到UIViewController中

Using Cocos2d inside a CCGLView that is  a Subview of the UIViewController's View


You need to add cocos2d libs 
And add these frameworks to support cocos2d 
 
 *  CoreMotion.framework
 *  QuartzCore.framework
 *  OpenGLES.framework
 *  OpenAL.framework
 *  AudioToolbox.framework
 *  AVFoundation.framework
 
There are something else to do in Build Settings ,especially in Header Search Paths
You can modify those according to a new cocos2d project.




Thanks preston's sharing.

http://www.cocos2d-iphone.org/forum/topic/285094#post-444059



