//
//  CS132Heap.h
//  TaskMaster
//
//  Created by Bryant Adams on 5/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#define ROOT_INDEX 1
@class CS132Task;

@interface CS132Heap : NSObject
@property int lastUsedIndex;
@property (strong) NSMutableArray* taskArray;

#pragma mark Bubbling 
-(void) bubbleDown: (int) indexOfTooBigNode;
-(void) bubbleUp: (int) indexOfTooSmallNode;

#pragma mark Main heap methods
-(void) addTask: (CS132Task*) taskToAdd;
-(void) deleteTopTask;
-(CS132Task*) topTask;

-(int) numberOfTasks;
-(BOOL) isEmpty;

#pragma mark Index manipulation
-(CS132Task*) taskAtIndex: (int) index;

-(BOOL) isValidIndex: (int) index;

-(int) indexOfParentOf: (int) index;
-(int) indexOfLeftChildOf: (int) index;
-(int) indexOfRightChildOf: (int) index;

-(BOOL) hasParent: (int) index;
-(BOOL) hasLeftChild: (int) index;
-(BOOL) hasRightChild: (int) index;

@end
