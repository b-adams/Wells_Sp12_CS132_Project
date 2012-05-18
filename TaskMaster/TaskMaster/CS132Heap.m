//
//  CS132Heap.m
//  TaskMaster
//
//  Created by Bryant Adams on 5/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CS132Heap.h"
#import "CS132Task.h"


@implementation CS132Heap

-(int) numberOfTasks
{
    int counter = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    //Ask Task heap how many items it has
    /*
	for(int i; i < [; i++)
	{
		counter = counter + 1;
	}
    return counter;*/
    
    BOOL emptyList = [self isEmpty];
    while (emptyList == NO) 
    {
        counter = counter + 1;
    }
    
    return counter;
}

@synthesize taskArray;
@synthesize lastUsedIndex;

- (id)init {
    self = [super init];
    if (self) {
        NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    }
    return self;
}

-(void) bubbleDown: (int) indexOfTooBigNode
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

-(void) bubbleUp: (int) indexOfTooSmallNode
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    //indexOfTooSmallNode has to be moved up into the place of its parent.... ?
    //Uses Compare method... ?
    
    
    
}

-(BOOL) isEmpty
{
    BOOL empty = NO;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    //isEmtpty... Returns No if it has tasks... Returns Yes if it has no tasks...
    //Tasks list is a Heap.... How do we know when it is Empty? When Children are Nil?
    //Left child is first?... No Left child = No right Child....
        //This only checks if the top task has a tasks? Is it supposed to run through them all in order to check? Does it call another method?
    /*
    if ([self topTask] != nil) 
    {
        return empty = YES;
    }
    else
    {
        return empty;
    }*/
    
    if ([self numberOfTasks] != 0) 
    {
        return empty;
    }
    else
    {
        return YES;
    }
    
}
-(void) deleteTopTask
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

-(void) addTask: (CS132Task*) taskToAdd
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    //Add task to the heap... (Bottom or top... Could it be added at the topTask?)
    //Ask task to add itself? Or ask Heap to add the new task...?
    //taskToAdd = [[CS132Task alloc] init];
    //[self taskAtIndex:[self lastUsedIndex]]; Must set taskToAdd at the index AFTER the last Used Index..... How?
    
    
}

-(BOOL) isValidIndex: (int) index
{
    BOOL retval = NO;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

-(int) indexOfParentOf: (int) index
{
    int retval = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    //index is Child... Must return the index of the Parent...
    //Things are linking in a Heap in a way where they know only their children? Or do they know their parents too....?
    
    
    
    return retval;
}

-(int) indexOfLeftChildOf: (int) index
{
    int retval = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

-(int) indexOfRightChildOf: (int) index
{
    int retval = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    //index is the index of the Parent... Must return index of Child....
    
    
    return retval;
}

-(BOOL) hasParent:(int) index
{
    BOOL retval = NO;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

-(BOOL) hasLeftChild: (int) index
{
    BOOL retval = NO;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

-(BOOL) hasRightChild: (int) index
{
    BOOL retval = NO;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

-(CS132Task*) taskAtIndex: (int) index
{
    CS132Task* retval = nil;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

-(CS132Task*) topTask
{
    CS132Task* retval = nil;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

-(NSString*) description
{
    NSString* retval = nil;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;    
}
@end
