//
//  ViewController.m
//  ShakyTextView
//
//  Created by Pulkit Rohilla on 02/07/15.
//  Copyright (c) 2015 PulkitRohilla. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[textView layer] setBorderColor:[[UIColor lightGrayColor] CGColor]];
    [[textView layer] setBorderWidth:0.3];
    [[textView layer] setCornerRadius:3];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)shake:(UIView *)view forTime:(CGFloat)time andCount:(int)shakes andDistance:(int)distance
{
    [UIView animateWithDuration:time animations:^
     {
         view.transform = CGAffineTransformMakeTranslation(distance, 0);
     }
                     completion:^(BOOL finished)
     {
         if(shakes == 0)
         {
             view.transform = CGAffineTransformIdentity;
             return;
         }

         [self shake:view forTime:time andCount:(shakes-1) andDistance:(distance*-1)];
     }];
}

- (IBAction)actionShakeTextView:(id)sender {

    [self shake:textView forTime:0.08 andCount:4 andDistance:4];

}


@end
