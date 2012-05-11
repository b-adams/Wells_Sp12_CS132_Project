//
//  CS132Task.h
//  TaskMaster
//
//  Created by Bryant Adams on 5/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CS132Task : NSObject

/*
 Represents a string pointer to a task
 */
@property (strong) NSString* taskName;

/*
 Represents a String pointer to the task's description
 */
@property (strong) NSString* taskDescription;

/*
 Represents an NSDate pointer to the dateDue
 */
@property (strong) NSDate* dateDue;

/*
 Represents an NSDate pointer to the dateCreated
 */
@property (strong) NSDate* dateCreated;

/*
 Represents an NSTimeInterval of time Remaining
 */
@property NSTimeInterval timeRemaining;

/*
 Represents an NSDate pointer to the dateCompleted
 */
@property (strong) NSDate* dateCompleted;

/*
 Represents an NSTimeInterval of timeSpent
 */
@property NSTimeInterval timeSpent;

/*
 Represents an NSTimeInterval of timeExpected
 */
@property NSTimeInterval timeExpected;

/*
 Calls effectiveDate
 Returns and NSDate pointer to a newly generated date
 */
-(NSDate*) dateEffective;

/*
 Compares dateDue to timeRemaining (dateDute - timeRemaining)
 returns an NSDate pointer to the newly generated date
 */
-(NSDate*) effectiveDate;

/*
 Determines whether the task has been completed or not
 returns Yes if the task has been completed and No if the taskis not complete
 */
-(BOOL) isCompleted;

/*
 The designated initializer for setting up a new task
 */
-(id) initWithName: (NSString*) name
    andDescription: (NSString*) description
        andDueDate: (NSDate*) dueDate
   andTimeEstimate: (NSTimeInterval) seconds;

-(NSComparisonResult) compare: (CS132Task*) anotherTask;

/*
 Computes the time in progress from start to finish
 param none the value of the current progress
 param done the value of the progress to the completion
 returns the integer representing progress (between 0-100)
 */
-(int) progressOfCompletionFrom:(int) none
                             to:(int) done;

/*
 Computes the progress of the date from start to finish
 param none the value of the current progress from the date
 param done the value of the progress to the completion date
 returns the integer representing progress (between 0-100)
 */
-(int) progressOfDateFrom:(int) none
                       to:(int) done;

@end
