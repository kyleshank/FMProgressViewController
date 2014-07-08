//
//  FMViewController.m
//  FMProgressViewController
//
//  Created by Kyle Shank on 07/07/2014.
//  Copyright (c) 2014 Kyle Shank. All rights reserved.
//

#import "FMViewController.h"
#import <FMProgressViewController/UIViewController+FMProgress.h>

@interface FMViewController ()

@end

@implementation FMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)test:(id)sender{
    [self setTitle:@"Progressing..."];
    self.fm_progress=0.0f;
    NSTimer *timer = [NSTimer timerWithTimeInterval:0.1
                                             target:self
                                           selector:@selector(increaseProgress)
                                           userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
}

-(void) increaseProgress{
    if(self.fm_progress < 1.0f){
        self.fm_progress = self.fm_progress+0.01f;
    }else{
        [self setTitle:@"Done!"];
    }
}

@end
