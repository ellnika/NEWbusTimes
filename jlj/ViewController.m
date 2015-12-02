//
//  ViewController.m
//  jlj
//
//  Created by Ewa Czekalska on 08/11/2015.
//  Copyright © 2015 Ewa Czekalska. All rights reserved.
//

#import "ViewController.h"
#import "BusTimes.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *dayLabel;
@property (strong, nonatomic) BusTimes *bus;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewdidload");
    
    [self setBackgroundColor];
    
    self.bus=[[BusTimes alloc]init];
    [self.bus startGetBusTimes];
}

- (IBAction)showMeBus:(id)sender {
    for (NSDictionary *avatar in [self.bus getBusTimes]) {
        NSString *name = avatar[@"expectedArrival"];
        NSLog(@"@The next bus is in %@", name);
        
        self.displayLabel.text=name;
    }
}

-(void)setBackgroundColor{
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE"];
    NSLog(@"%@", [dateFormatter stringFromDate:[NSDate date]]);
    
    
    if ([[dateFormatter stringFromDate:[NSDate date]]  isEqual: @"Monday"])
        
    {
        self.view.backgroundColor=[UIColor blueColor];
        
        
    }
    
    else
        if ([[dateFormatter stringFromDate:[NSDate date]]  isEqual: @"Tuesday"])
            
        {
            self.view.backgroundColor=[UIColor greenColor];
        }
    
        else
            if ([[dateFormatter stringFromDate:[NSDate date]]  isEqual: @"Wednesday"])
                
            {
                self.view.backgroundColor=[UIColor yellowColor];
                
            }
    
            else
                if ([[dateFormatter stringFromDate:[NSDate date]]  isEqual: @"Thuesday"])
                    
                {
                    self.view.backgroundColor=[UIColor purpleColor];
                    
                }
    
                else
                    if ([[dateFormatter stringFromDate:[NSDate date]]  isEqual: @"Friday"])
                        
                    {
                        self.view.backgroundColor=[UIColor orangeColor];
                    }
    
                    else
                        
                        
                        
                        
                        self.view.backgroundColor=[UIColor brownColor];
    
    
    self.dayLabel.text=[NSString stringWithFormat:@"%@",[dateFormatter stringFromDate:[NSDate date]]];
    
}
@end
