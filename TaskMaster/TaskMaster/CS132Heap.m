/**
 @file CS132Heap.m
 @author CS132 Class
 @date 5/15/12
 @brief Heap implementation
 */

#import "CS132Heap.h"
#import "CS132Task.h"


@implementation CS132Heap

@synthesize taskArray;
@synthesize lastUsedIndex;

- (id)init {
    self = [super init];
    if (self) {
        [self setLastUsedIndex:0];
        [self setTaskArray:[NSMutableArray arrayWithObject:[NSNull null]]];
    }
    return self;
}

-(int) numberOfTasks
{
    return [self lastUsedIndex]; //Correct value to be maintained by add and remove methods
}

-(void) bubbleDown: (int) indexOfTooBigNode
{
    int lindex = [self indexOfLeftChildOf:indexOfTooBigNode];
    int rindex = [self indexOfRightChildOf:indexOfTooBigNode];
    CS132Task* curNode = nil;
    CS132Task* leftNode = nil;
    CS132Task* rightNode = nil;
    CS132Task* lilChild = nil;
    int lilChildIndex = NAN;
    
    if(![self isValidIndex:indexOfTooBigNode]) return; //Silly call! No node.
    if(![self isValidIndex:lindex]) return; //No children. Stop bubbling.
    
    
    //Find biggest child
    leftNode = [self taskAtIndex:lindex];
    if(![self isValidIndex:rindex]) { //Only one child
        lilChild = leftNode;
        lilChildIndex = lindex;
    } else { //Two children
        rightNode = [self taskAtIndex:rindex]; 
        switch([leftNode compare:rightNode])
        {
            case NSOrderedSame: //left=right (both are smallest child)
            case NSOrderedDescending: //left > right
                lilChild = rightNode;
                lilChildIndex = rindex;
                break;
            case NSOrderedAscending: //left < right
                lilChild = leftNode;
                lilChildIndex = lindex;
                break;
        }
    }
    
    //Compare current to big child
    curNode = [self taskAtIndex:indexOfTooBigNode];
    switch([curNode compare:lilChild])
    {
        case NSOrderedSame: //Doesn't matter which way this goes
        case NSOrderedAscending: //current < lil: nothing to fix
            return; break; //No swap needed
        case NSOrderedDescending: //lil < current
            [[self taskArray] exchangeObjectAtIndex:indexOfTooBigNode
                                  withObjectAtIndex:lilChildIndex]; //Swap
            [self bubbleDown:lilChildIndex]; //Continue bubbling down
            break;
    }
}

-(void) bubbleUp: (int) indexOfTooSmallNode
{
    if(![self isValidIndex:indexOfTooSmallNode]) return; //Silly call! No node.
    if(![self hasParent:indexOfTooSmallNode]) return; //Nowhere to bubble up to
    
    int parentIndex = [self indexOfParentOf:indexOfTooSmallNode];
    CS132Task* parentTask = [self taskAtIndex:parentIndex];
    
    switch([[self taskAtIndex:indexOfTooSmallNode] compare:parentTask])
    {
        case NSOrderedSame: //Doesn't matter which way this goes
        case NSOrderedDescending: //current > parent: Nothing to fix
            return; break; //No swap needed
        case NSOrderedAscending:
            [[self taskArray] exchangeObjectAtIndex:indexOfTooSmallNode 
                                  withObjectAtIndex:parentIndex]; //Swap
            [self bubbleUp:parentIndex]; //Continue bubbling up
            break;
    }
}

-(BOOL) isEmpty
{
    return [self numberOfTasks] == 0;
}

-(void) deleteTopTask
{
    if([self isEmpty]) return; //Nothing to see here, move along
    
    int newLastUsed = [self lastUsedIndex] - 1; 
    
    [taskArray exchangeObjectAtIndex:ROOT_INDEX 
                   withObjectAtIndex:[self lastUsedIndex]]; //Swap to end
    
    [taskArray replaceObjectAtIndex: lastUsedIndex 
                         withObject:[NSNull null]]; //Erase old top task
    
    [self setLastUsedIndex:newLastUsed]; //Update content counter (before bubbling)
    
    [self bubbleDown: ROOT_INDEX]; //Fix nonheapyness at the new root
}

-(void) addTask: (CS132Task*) taskToAdd
{
    int newLastUsed = [self lastUsedIndex] + 1;
    NSLog(@"Number of tasks: %d, newLastUsed: %d", [self numberOfTasks], newLastUsed );
    if(newLastUsed < [taskArray count])
    { //Spare space available for use
        [[self taskArray] replaceObjectAtIndex: newLastUsed 
                                    withObject:taskToAdd]; //Use empty space
    } 
    else
    { //No spare space
        [[self taskArray] addObject:taskToAdd]; //Add to end
    }
    
    [self setLastUsedIndex:newLastUsed]; //Update content counter (before bubbling)
    
    [self bubbleUp: newLastUsed]; //Fix nonheapyness at the new node
}


-(BOOL) isValidIndex: (int) index
{
    return !(index < ROOT_INDEX || index > [self lastUsedIndex]);
}

-(int) indexOfParentOf: (int) index
{
    return index / 2; //The power of integer arithmetic! 15/2 == 7
}

-(int) indexOfLeftChildOf: (int) index
{
    return index * 2;
}

-(int) indexOfRightChildOf: (int) index
{
    return index * 2 + 1;
}

-(BOOL) hasParent:(int) index
{
    return [self isValidIndex:[self indexOfParentOf:index]];
}

-(BOOL) hasLeftChild: (int) index
{
    return [self isValidIndex:[self indexOfLeftChildOf:index]];
}

-(BOOL) hasRightChild: (int) index
{
    return [self isValidIndex:[self indexOfRightChildOf:index]];
}

-(CS132Task*) taskAtIndex: (int) index
{
    return [[self taskArray] objectAtIndex:index];    
}

-(CS132Task*) topTask
{
    if([self isValidIndex:ROOT_INDEX])
    {
        return [self taskAtIndex:ROOT_INDEX];
    } else {
        return nil;
    }
}

-(NSString*) description
{
    return [taskArray description];
}
@end
