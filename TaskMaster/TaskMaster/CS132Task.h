/**
 @file CS132Task.h
 @author CS132 Class and Bryant Adams
 @date 5/18/12
 @brief Heap implementation
 @assistant Professor Adams
 @assistant Dauris Little
 */

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

/**
 @brief Date the task was created
 */
@property (strong) NSDate* dateCreated;

/**
 @brief Amount of remaining work-time currently forecast before the task will be completed.
 */
@property NSTimeInterval timeRemaining;

/**
 @brief Date when the task was finished. If the task hasn't been finished yet, this should be nil.
 */
@property (strong) NSDate* dateCompleted;

/**
 @brief Amount of work-time that has been spent on the task so far. 
 */
@property NSTimeInterval timeSpent;

/**
 @brief Original amount of actively-working-time the task was expected to take.
 */
@property NSTimeInterval timeExpected;

/**
 @brief Calls effectiveDate
 @return see effectiveDate
 */
-(NSDate*) dateEffective;

/**
 @brief Compares dateDue to timeRemaining (dateDute - timeRemaining)
 @return The latest date at which you could start the task and have any hope of finishing on time, given current remaining-time estimates.
 */
-(NSDate*) effectiveDate;

/**
 @brief Determines whether the task has been completed or not
 @return Yes if the task has been completed and No if the task is not complete
 */
-(BOOL) isCompleted;

/**
 @brief The designated initializer for setting up a new task
 @param name The name for the task
 @param description The description for the task
 @param dueDate The deadline for the task
 @param seconds The amount of working-time the task is expected to tak
 @returns The now-initialized task
 */
-(id) initWithName: (NSString*) name
    andDescription: (NSString*) description
        andDueDate: (NSDate*) dueDate
   andTimeEstimate: (NSTimeInterval) seconds;

/**
 @brief Compare the priority level of two tasks
 @param anoterTask the task that the receiver task will be compared to
 @returns an NSComparisionResult indicating whether the receiver should be before, after, or the same as anotherTask
 
 \see <a href="https://developer.apple.com/library/mac/#documentation/Cocoa/Reference/Foundation/Miscellaneous/Foundation_Constants/Reference/reference.html#//apple_ref/c/tdef/NSComparisonResult">NSComparisonResult documentation</a> for more information on NSComparisonResult
 */
-(NSComparisonResult) compare: (CS132Task*) anotherTask;

/**
 @brief Computes the time in progress from start to finish
 @param none the low end of the scale you want to use
 @param done the high end of the scale you want to use
 @return the integer representing progress (between none and done)

 For example, if you use [someTask progressOfCompletionFrom:0 to:100]
 then you'll get get the completion level on a scale from 0 to 100
 For a scale from -5 to 5, use [someTask progressOfCompletionFrom:-5 to 5]
 */
-(int) progressOfCompletionFrom:(int) none
                             to:(int) done;

/**
 @brief Computes the progress of the date from start to finish
 @param none the low end of the scale you want to use
 @param done the high end of the scale you want to use
 @return the integer representing progress (between none and done)
 */
-(int) progressOfDateFrom:(int) none
                       to:(int) done;

@end
