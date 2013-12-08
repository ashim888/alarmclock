//
//  ViewController.m
//  AlarmColck
//
//  Created by ashim888 on 11/8/13.
//  Copyright (c) 2013 com.uis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

//For tracking error
@implementation ViewController

-(void)notification:(NSDate *)fireDate {
    UILocalNotification *notificationnow= [[UILocalNotification alloc] init];
    notificationnow.fireDate=fireDate;
    notificationnow.alertBody=@"Wake UP";
    notificationnow.soundName=@"time.mp3";
    
    [[UIApplication sharedApplication] scheduleLocalNotification:notificationnow];
}

-(void) myMessage:(NSString *)message{
    
    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:@"Alarm Clock" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

-(IBAction)alarmSetButton:(id)sender{
    //NSLog(@"Alarm Set Presssed");
    NSDateFormatter *dateFormatter =[[NSDateFormatter alloc] init];
    dateFormatter.timeZone=[NSTimeZone defaultTimeZone];
    dateFormatter.timeStyle= NSDateFormatterShortStyle; //for date formatters
    dateFormatter.dateStyle=NSDateFormatterShortStyle;
    
    //Test to see if its pulling the date
    NSString *dateTimeSting = [dateFormatter stringFromDate:dateTimePicker.date];
    NSLog(@"Alarm Set at : %@",dateTimeSting);
    [self notification:dateTimePicker.date];
    
    [self myMessage:@"Alarm has been set"];
    
    
}

-(IBAction)alarmCancelButton:(id)sender{
    NSLog(@"Alarm Canceled Pressed");
    [[UIApplication sharedApplication] cancelAllLocalNotifications];
    [self myMessage:@"Alarm Cancelled"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor =[UIColor colorWithPatternImage:[UIImage imageNamed:@"background3.png"]];
    dateTimePicker.date= [NSDate date]; //setting time as in the system
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    
}


@end
