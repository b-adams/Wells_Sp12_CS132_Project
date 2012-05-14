//
//  CS132Task.h
//  TaskMaster
//
//  Created by Bryant Adams on 5/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CS132Task : NSObject

/**
 @brief Represents a string pointer to a task
 */
@property (strong) NSString* taskName;

/**
 @brief Represents a String pointer to the task's description
 */
@property (strong) NSString* taskDescription;

/**
 @brief Represents an NSDate pointer to the dateDue
 */
@property (strong) NSDate* dateDue;

/**
 @brief Represents an NSDate pointer to the dateCreated
 */
@property (strong) NSDate* dateCreated;

/**
 @brief Represents an NSTimeInterval of time Remaining
 */
@property NSTimeInterval timeRemaining;

/**
 @brief Represents an NSDate pointer to the dateCompleted
 */
@property (strong) NSDate* dateCompleted;

/**
 @brief Represents an NSTimeInterval of timeSpent
 */
@property NSTimeInterval timeSpent;

/**
 @brief Represents an NSTimeInterval of timeExpected
 */
@property NSTimeInterval timeExpected;

/**
 @brief Calls effectiveDate
 @return and NSDate pointer to a newly generated date
 */
-(NSDate*) dateEffective;

/**
 @brief Compares dateDue to timeRemaining (dateDute - timeRemaining)
 @return an NSDate pointer to the newly generated date
 */
-(NSDate*) effectiveDate;

/**
 @brief Determines whether the task has been completed or not
 @return Yes if the task has been completed and No if the taskis not complete
 */
-(BOOL) isCompleted;

/**
 @brief The designated initializer for setting up a new task
 */
-(id) initWithName: (NSString*) name
    andDescription: (NSString*) description
        andDueDate: (NSDate*) dueDate
   andTimeEstimate: (NSTimeInterval) seconds;

/**
 @brief Compares two tasks
 @param anoterTask is the task that the given task will be compared to
 @return an NSComparisionResult value
 */
-(NSComparisonResult) compare: (CS132Task*) anotherTask;

/**
 @brief Computes the time in progress from start to finish
 @param none the value of the current progress
 @param done the value of the progress to the completion
 @return the integer representing progress (between 0-100)
 */
-(int) progressOfCompletionFrom:(int) none
                             to:(int) done;

/**
 @brief Computes the progress of the date from start to finish
 @param none the value of the current progress from the date
 @param done the value of the progress to the completion date
 @return the integer representing progress (between 0-100)
 */
-(int) progressOfDateFrom:(int) none
                       to:(int) done;

@end
