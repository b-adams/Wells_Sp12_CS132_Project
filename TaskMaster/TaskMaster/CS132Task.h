//
//  CS132Task.h
//  TaskMaster
//
//  Created by Bryant Adams on 5/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CS132Task : NSObject

-(NSString *) taskName;

-(NSString *)taskDescription;

-(NSDate *) dateDue;

-(NSDate *) dateCreated;

-(NSTimeInterval *) timeSpent;

-(NSTimeInterval *) timeRemaining;

-(NSDate *) dateCompleted;

-(NSTimeInterval *) timeInterval;

@end
