//
//  ViewController.m
//  KWPopoverViewDemo
//
//  Created by zzl on 14-4-10.
//  Copyright (c) 2014年 zzl. All rights reserved.
//

#import "ViewController.h"
#import "KWPopoverView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _contentView.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)popoverBtnClicked:(id)sender forEvent:(UIEvent *)event {
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    if(!window) {
        window = [[UIApplication sharedApplication].windows objectAtIndex:0];
    }
    NSSet *set = event.allTouches;
    UITouch *touch = [set anyObject];
    CGPoint point1 = [touch locationInView:window];
    //    CGPoint point = sender.center;
    [KWPopoverView showPopoverAtPoint:point1 inView:self.view withContentView:_contentView];
}
@end
