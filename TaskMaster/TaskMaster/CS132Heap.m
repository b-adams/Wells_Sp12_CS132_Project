/**
 @file CS132Heap.m
 @author CS132 Class and Bryant Adams
 @date 5/15/12
 @brief Heap implementation
 @assistant Professor Adams
 */


#import "CS132Heap.h"
#import "CS132Task.h"


@implementation CS132Heap

-(int) numberOfTasks
{
    int counter = NAN;
    //NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
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

@synthesize taskArray = DNU_tickTock;
@synthesize lastUsedIndex = DNU_mrPopperPenguins;

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
    //NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    //indexOfTooSmallNode has to be moved up into the place of its parent.... ?
    //Uses Compare method... ?
    int parentIndex = [self indexOfParentOf:indexOfTooSmallNode];
    if ([self hasParent:indexOfTooSmallNode] == YES) 
    {
        CS132Task* parentTask = [self taskAtIndex:parentIndex];
        
        if([[self taskAtIndex:indexOfTooSmallNode] compare:parentTask] == NSOrderedAscending) 
        {
            [[self taskArray] exchangeObjectAtIndex:indexOfTooSmallNode withObjectAtIndex:parentIndex];
            [self bubbleUp:parentIndex];
        }

    }
}

-(BOOL) isEmpty
{
    BOOL empty = NO;
    //NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
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
    [taskArrayexchangeObjectAtIndex:[taskArray indexOfObject:[self topTask]] withObjectAtIndex:[self lastUsedIndex]];
    
    [taskArray replaceObjectAtIndex: lastUsedIndex withObject:[NSNull null]];
    
    [self bubbleDown: [taskArray indexOfObject: [self topTask]]];
    
    return;
}

-(void) addTask: (CS132Task*) taskToAdd
{
    //NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    //Add task to the heap... (Bottom or top... Could it be added at the topTask?)
    //Ask task to add itself? Or ask Heap to add the new task...?
    //taskToAdd = [[CS132Task alloc] init];
    //[self taskAtIndex:[self lastUsedIndex]]; Must set taskToAdd at the index AFTER the last Used Index..... How?
    // Might need to call Left or Right index of Child Of.... ?? Yes... No?
    //[CS132Heap taskToAdd setLastUsedIndex: [self indexOfParentOf:[self lastUsedIndex]]]; //My Attempt at making taskToAdd the child of the last task on the list. Trying to put the last task's child's index as taskToAdd's index....
    //Last< Size ... Last = Size-1.... Last>= size
    int index = [self lastUsedIndex] +1;
    if([self lastUsedIndex] == [self numberOfTasks]-1)
    {
        [[self taskArray] addObject:taskToAdd];
    }
    else if([self lastUsedIndex] < [self numberOfTasks])
    {
        [[self taskArray] replaceObjectAtIndex: index withObject:taskToAdd];
    }
    else
    {
        NSLog(@"Ummmm... Yeah. No. Not allowed to Happen... Ever...");
    }
    
}

-(BOOL) isValidIndex: (int) index
{
    BOOL retval = NO;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

-(int) indexOfParentOf: (int) index
{
    int parent = index / 2;
    //NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    //index is Child... Must return the index of the Parent...
    //Things are linking in a Heap in a way where they know only their children? Or do they know their parents too....?
    
    return parent;
}

-(int) indexOfLeftChildOf: (int) index
{
    int retval = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

-(int) indexOfRightChildOf: (int) index
{
    int child = index * 2 + 1;
    //NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    //index is the index of the Parent... Must return index of Child....
    /*
    if( == YES)
    {
        return child;
    }
    else
    {
        return NAN;
    }*/
    return child;
    
}

-(BOOL) hasParent:(int) index
{
    if([self isValidIndex:[self indexOfParentOf:index]]==YES)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

-(BOOL) hasLeftChild: (int) index
{
    if([self isValidIndex:[self indexOfLeftChildOf:index]]==YES)
    {
        return YES;
    }
    else
    {
        return NO;
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
    return [taskArray description];
}
@end
