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
    int retval = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
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
    if ([self indexOfLeftChildOf:indexOfTooBigNode] == NAN) 
    {
        return;
    }
    
    
    if (indexOfTooBigNode > [self indexOfLeftChildOf:indexOfTooBigNode]) 
    {
        if (indexOfTooBigNode > [self indexOfRightChildOf:indexOfTooBigNode])
        {
            if ([self indexOfLeftChildOf:indexOfTooBigNode] > [self indexOfRightChildOf:indexOfTooBigNode])
            {
                [taskArray exchangeObjectAtIndex:[self indexOfRightChildOf:indexOfTooBigNode]withObjectAtIndex:indexOfTooBigNode];
            }
            else
            {
                [taskArray exchangeObjectAtIndex:[self indexOfLeftChildOf:indexOfTooBigNode]withObjectAtIndex:indexOfTooBigNode];
                
            }
        }
        else
        {
            [taskArray exchangeObjectAtIndex:[self indexOfLeftChildOf:indexOfTooBigNode]withObjectAtIndex:indexOfTooBigNode];
            
        }
    }
    else
    {
        return;
    }
}

-(void) bubbleUp: (int) indexOfTooSmallNode
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

-(BOOL) isEmpty
{
    BOOL retval = NO;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}
-(void) deleteTopTask
{
   [taskArray exchangeObjectAtIndex:[taskArray indexOfObject:[self topTask]] withObjectAtIndex:[self lastUsedIndex]];
    
    [taskArray removeObject:[taskArray indexOfObject:[self lastUsedIndex]]];
    
    [self bubbleDown:[self topTask]];
    
    return;
}

-(void) addTask: (CS132Task*) taskToAdd
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}



-(BOOL) isValidIndex: (int) index
{
    if ([self taskAtIndex: index] == NULL)
    {
        return NO;
    }
    else
    {
        return YES;
    }
}

-(int) indexOfParentOf: (int) index
{
    int retval = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
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
    return retval;
}

-(BOOL) hasParent:(int) index
{
    if([self taskAtIndex: [self indexOfParentOf:index]] == NULL)
    {
        return NO;
    }
    else
    {
        return YES;
    }
}
-(BOOL) hasLeftChild: (int) index
{
    if([self taskAtIndex: [self indexOfLeftChildOf:index]] == nil)
    {
        return NO;
    }
    else
    {
        return YES;
    }
    
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
    return [CS132Task description];
}
@end
