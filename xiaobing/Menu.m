//
//  Menu.m
//  xiaobing
//
//  Created by zhangxi on 13-7-22.
//  Copyright (c) 2013年 me.zhangxi. All rights reserved.
//

#import "Menu.h"
#import "PodcastList.h"

@implementation Menu

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)listen:(id)sender {
    
    PodcastList *list = [[PodcastList alloc] initWithNibName:@"PodcastList" bundle:nil];
    [self.navigationController pushViewController:list animated:YES];
}

- (IBAction)rate:(id)sender {
}
@end
