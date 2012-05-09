//
//  CS132Task.h
//  TaskMaster
//
//  Created by Bryant Adams on 5/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CS132Task : NSObject

@property (strong) NSString* taskName;

@property (strong) NSString* taskDescription;

@property (strong) NSDate* dateDue;

@property (strong) NSDate* dateCreated;

@property (strong) NSTimeInterval* timeRemaining;

@property (strong) NSDate* dateCompleted;

@property (strong) NSTimeInterval* timeExpected;

@property (strong) NSTimeInterval* timeSpent;


@end
