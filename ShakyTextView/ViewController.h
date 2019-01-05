//
//  ViewController.h
//  ShakyTextView
//
//  Created by Pulkit Rohilla on 02/07/15.
//  Copyright (c) 2015 PulkitRohilla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *textView;
- (IBAction)actionShakeTextView:(id)sender;

@end

