/**
 * @file CS132Manager.h
 * @author Professor Adams
 * @author Dauris Little
 * @author Constance LeBerth
 * @author Keegan Evans
 * @brief TaskMaster
 * @date 5/18/12
 * @status Program is complete 
 * @assistance Professor Adams
 * @assistant Constance LeBerth
 */

#import <Foundation/Foundation.h>
#define ROOT_INDEX 1
@class CS132Heap;
@class CS132Task;


@interface CS132Manager : NSObject
/**
 @brief It represent a NSMutableArray pointer that keep track of task completed 
 */
@property (strong) NSMutableArray* tasksCompleted;
/**
 @brief It represent CS132Heap pointer that monitors the task to do next
 */
@property (strong) CS132Heap* tasksToDo;
/** 
 @brief It represent CS132 pointer to the current top task of the heap
 */
@property (weak) CS132Task* topTask;

/**
 @breif To stop topTask from pointing at a completed task and start pointing to the new topTask in the heap
 */
-(void) fixTopTask;

/**
 @brief To spend time on topTime
 @param seconds an integer that represent time that is spent on topTask
 */
-(void) spendTimeOnTopTask:(int) seconds;

/**
 @brief Adjust remaining time to a new time remaining for topTask
 @param second an integer that represent new time for the topTask
 */
-(void) changeRemainingTimeTo:(int) seconds;

/**
 @brief Add a task with necessary task information
 @param newName an NSString pointer representing the task name
 @param newDesc an NSString pointer representing the task description
 @param newDue an NSDate pointer representing the task due date
 @param newTimeNeeded an integer representing amount of time needed to complete task
 */
-(void) addTaskWithName: (NSString*) newName
         andDescription: (NSString*) newDesc
                 andDue: (NSDate*) newDue
        andTimeRequired: (int) newTimeNeeded;

/**
 @brief Count how many task there are to do
 @return a number in regards to how many tasks
 */
-(int) countTasksToDo;
@end
