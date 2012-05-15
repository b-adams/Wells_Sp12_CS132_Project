/**
 @file CS132Heap.h
 @author CS132 Class and Bryant Adams
 @date 5/15/12
 @brief Heap interface
 @assistant Professor Adams
 */

#import <Foundation/Foundation.h>
#define ROOT_INDEX 1
@class CS132Task;

@interface CS132Heap : NSObject

/**
 @brief object created to represent last used index in array
 */
@property int lastUsedIndex;
/**
 @brief object created to represent the entire task Array
 */
@property (strong) NSMutableArray* taskArray;

#pragma mark Bubbling 

/**
 @brief takes the index at the top of the array and places it down in the correct spot of the heap
 @param indexOfTooBigNode
 @return nothing
*/
-(void) bubbleDown: (int) indexOfTooBigNode;
/**
 @brief take the lowest index in the array and bubble up the node that is too small to the correct spot in the heap
 @param indexOfTooSmallNode
 @return nothing
 */
-(void) bubbleUp: (int) indexOfTooSmallNode;

#pragma mark Main heap methods
/**
 @brief add a task to the heap
 @param taskToAdd
 @return nothing
 */
-(void) addTask: (CS132Task*) taskToAdd;
/**
 @brief delete the top task of the heap
 @param none
 @return none
 */
-(void) deleteTopTask;
/**
 @brief find the top task of the heap
 @param none
 @return the top task
 */
-(CS132Task*) topTask;

/**
 @brief find number of tasks in array
 @param none
 @return the number of tasks
 */
-(int) numberOfTasks;
/**
 @brief determine fi the heap is empty
 @param none
 @return YES/No
 */
-(BOOL) isEmpty;

#pragma mark Index manipulation
/**
 @brief Represents a single task at a certain index
 @param the index given
 @return a CS132Task object
 */
-(CS132Task*) taskAtIndex: (int) index;

/**
 @brief determine if there is a task at an index
 @param index
 @return Yes/no
 */
-(BOOL) isValidIndex: (int) index;

/**
 @brief find the index of the parent of a given index
 @param the given index
 @return the index of that parent
 */
-(int) indexOfParentOf: (int) index;
/**
 @brief find the index of the left child of a given index
 @param the given index
 @return the index of the left child
 */
-(int) indexOfLeftChildOf: (int) index;

/**
 @brief Compare the priority level of two tasks
 @param the given index
 @return the index of the right child
 */-(int) indexOfRightChildOf: (int) index;

/**
 @brief determine if a certain index has a parent
 @param the index that might have a parent
 @return Yes/No
 */
-(BOOL) hasParent: (int) index;
/**
 @brief determine if a certain index has a left child
 @param the index that might have a left child
 @return Yes/No
 */
-(BOOL) hasLeftChild: (int) index;
/**
 @brief determine if a certain index has a right child
 @param the index that might have a right child
 @return Yes/No
 */
-(BOOL) hasRightChild: (int) index;

@end
