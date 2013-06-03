//
//  AppDelegate.m
//  xiaobing
//
//  Created by 张 玺 on 13-6-1.
//  Copyright (c) 2013年 me.zhangxi. All rights reserved.
//

#import "AppDelegate.h"
#import "GuideViewController.h"
#import "DataCenter.h"
#import "ListVIewController.h"
#import <MobClick.h>
#import <AVFoundation/AVFoundation.h>
#import <UMSocial.h>
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"%@",NSHomeDirectory());
    
    [MobClick startWithAppkey:@"51abf69b56240b183404f364"];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //self.window.rootViewController = [[GuideViewController alloc] init];
    
    
    
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[ListVIewController alloc] init]];
    
    //[self.window.rootViewController.navigationController setNavigationBarHidden:NO animated:NO];
    
    
//    player = [[XBPlayer alloc] init];
//    player.url = [NSURL URLWithString:@"http://mr3.douban.com/201306012033/bac698fb43b0609bf16ea8d044bb2ad2/view/song/small/p1639355.mp3"];
//    [player play];
    
//    
//    UInt32 allowMix = 1;
//    
//    AVAudioSession* audioSession = [AVAudioSession sharedInstance];
//    
//    [audioSession setCategory:AVAudioSessionCategoryPlayback error:nil];
//    
//    AudioSessionSetProperty(kAudioSessionProperty_OverrideCategoryMixWithOthers, sizeof(allowMix), &allowMix);
//    
//    [audioSession setActive:YES error:nil];
//    
    //AVAudioSession *session = [AVAudioSession sharedInstance];
    //[session setCategory:AVAudioSessionCategoryPlayback error:nil];
    //[session setActive:YES error:nil];

     [[UIApplication sharedApplication] beginReceivingRemoteControlEvents];
    
    return YES;
}
-(BOOL)canBecomeFirstResponder
{
    return YES;
}
-(void)remoteControlReceivedWithEvent:(UIEvent *)event
{
    NSLog(@"%@",event);
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    [UMSocialSnsService  applicationDidBecomeActive];
}

- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
    return  [UMSocialSnsService handleOpenURL:url wxApiDelegate:nil];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
