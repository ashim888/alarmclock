//
//  ViewController.h
//  AlarmColck
//
//  Created by ashim888 on 11/8/13.
//  Copyright (c) 2013 com.uis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIDatePicker *dateTimePicker;
    
}
-(void) myMessage: (NSString *) message;
-(IBAction)alarmSetButton:(id)sender;
-(IBAction)alarmCancelButton:(id)sender;
-(void) notification:(NSDate *) fireDate;

@end
