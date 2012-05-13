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
 @brief Name or Title of the task
 */
@property (strong) NSString* taskName;

/**
 @brief A textual description of the task or its details
 */
@property (strong) NSString* taskDescription;

/**
 @brief The date when the task is due
 */
@property (strong) NSDate* dateDue;

/*
 Represents an NSDate pointer to the dateCreated
 */
@property (strong) NSDate* dateCreated;

/**
 @brief The (estimated) amount of active worktime left until the task is completed.
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

/**
 @brief An autocompletion-friendly shell for effectiveDate
 @returns the same thing as effectiveDate
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

/**
 @brief Designated initializer
 @param name Desired name for the new task
 @param description Desired description/details for the new task
 @param dueDate Date when the new task will be due
 @param seconds Amount of actively-working time (in seconds) the task is expected to require
 @returns the initialized task
 */
-(id) initWithName: (NSString*) name
    andDescription: (NSString*) description
        andDueDate: (NSDate*) dueDate
   andTimeEstimate: (NSTimeInterval) seconds;

/**
 @brief Compare the priority level of two tasks
 @param anotherTask The task to compare the receiver against
 @returns NSOrderedAscending, NSOrderedSame, or NSOrderedDescending, as appropriate
 
 For more information, see <a href="https://developer.apple.com/library/mac/#documentation/Cocoa/Reference/Foundation/Miscellaneous/Foundation_Constants/Reference/reference.html#//apple_ref/c/tdef/NSComparisonResult">NSComparisonResult</a>
 */
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
