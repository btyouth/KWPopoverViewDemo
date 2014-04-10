//
//  ViewController.h
//  KWPopoverViewDemo
//
//  Created by zzl on 14-4-10.
//  Copyright (c) 2014年 zzl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIButton *btnPopover;
- (IBAction)popoverBtnClicked:(id)sender forEvent:(UIEvent *)event;

@end
