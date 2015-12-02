//
//  BusTimes.h
//  myBusTimeApp
//
//  Created by ewac on 02/12/2015.
//  Copyright © 2015 Ewa Czekalska. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BusTimes : NSObject
@property (nonatomic, strong) NSMutableData *responseData;


-(void)startGetBusTimes;
-(NSArray*)getBusTimes;

@end
