//
//  AboutViewController.h
//  xiaobing
//
//  Created by zhangxi on 13-6-3.
//  Copyright (c) 2013年 me.zhangxi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UMFeedback.h>

#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface AboutViewController : UIViewController
{
    AVAudioPlayer *player;
    
}



- (IBAction)feed:(UIButton *)sender;
- (IBAction)voice:(id)sender;

@end
