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
 @brief last used index in array
 */
@property int lastUsedIndex;

/**
 @brief the entire array of tasks (note: index-0 unused)
 */
@property (strong) NSMutableArray* taskArray;

#pragma mark Bubbling 

/**
 @brief takes the task at the given index and moves it down to the correct spot of the heap
 @param indexOfTooBigNode The index of the node to try to move down
*/
-(void) bubbleDown: (int) indexOfTooBigNode;

/**
 @brief take the task at the given index and bubbles it up to the correct spot in the heap
 @param indexOfTooSmallNode The index of the node to try to move up
 */
-(void) bubbleUp: (int) indexOfTooSmallNode;

#pragma mark Main heap methods
/**
 @brief add a task to the heap
 @param taskToAdd The task to insert into the heap
 */
-(void) addTask: (CS132Task*) taskToAdd;

/**
 @brief delete the top task of the heap
 */
-(void) deleteTopTask;

/**
 @brief find the top task of the heap
 @returns the top task
 */
-(CS132Task*) topTask;

/**
 @brief find number of tasks in array
 @returns the number of tasks
 */
-(int) numberOfTasks;

/**
 @brief determine fi the heap is empty
 @returns YES (heap empty) or NO (heap has contents)
 */
-(BOOL) isEmpty;

#pragma mark Index manipulation
/**
 @brief Retrieve the task object based upon given index
 @param the index given
 @returns the CS132Task object at index
 */
-(CS132Task*) taskAtIndex: (int) index;

/**
 @brief determine if there is a task at an index
 @param index to check validity of
 @returns YES if the index has an task, NO if not
 */
-(BOOL) isValidIndex: (int) index;

/**
 @brief find the index of the parent of a given index
 @param the given index
 @returns the index of that index's parent
 */
-(int) indexOfParentOf: (int) index;

/**
 @brief find the index of the left child of a given index
 @param the given index
 @returns the index of that index's left child
 */
-(int) indexOfLeftChildOf: (int) index;

/**
 @brief Compare the priority level of two tasks
 @param the given index
 @returns the index of that index's right child
 */
-(int) indexOfRightChildOf: (int) index;

/**
 @brief determine if a certain index has a parent
 @param the index that might have a parent
 @returns YES if a parent is present, NO if not
 
 Note: NO will be returned for the root node, but will also be returned for 
 most invalid indices. YES will be returned for non-root nodes, as well as
 for indices corresponding to children of valid nodes.
 */
-(BOOL) hasParent: (int) index;

/**
 @brief determine if a certain index has a left child
 @param the index that might have a left child
 @returns Yes/No
 */
-(BOOL) hasLeftChild: (int) index;

/**
 @brief determine if a certain index has a right child
 @param the index that might have a right child
 @returns Yes/No
 */
-(BOOL) hasRightChild: (int) index;

@end
