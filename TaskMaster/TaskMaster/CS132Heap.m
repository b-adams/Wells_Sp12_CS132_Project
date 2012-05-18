/**
 * @file CS132Heap.m
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

#import "CS132Heap.h"
#import "CS132Task.h"


@implementation CS132Heap

@synthesize taskArray;
@synthesize lastUsedIndex;


-(int) numberOfTasks
{
    int retval = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

- (id)init {
    self = [super init];
    if (self) {
        [self setLastUsedIndex:0];
        [self setTaskArray:[NSMutableArray arrayWithObject:[NSNull null]]];
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
}

-(BOOL) isEmpty
{
    BOOL retval = NO;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

-(void) deleteTopTask
{
    [taskArray exchangeObjectAtIndex:[taskArray indexOfObject:[self topTask]] 
                   withObjectAtIndex:[self lastUsedIndex]];
    
    [taskArray replaceObjectAtIndex: lastUsedIndex withObject:[NSNull null]];
    
    [self bubbleDown: ROOT_INDEX];
    
    return;
}

-(void) addTask: (CS132Task*) taskToAdd
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
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
    return retval;
}
-(int) indexOfLeftChildOf: (int) index
{
    int retval = NAN;
    
    retval = index * 2;
    
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
    
    if ([self isValidIndex:[self indexOfRightChildOf:index]] == YES) {
        return YES;
    } else {
        return NO;
    }
    //NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

-(CS132Task*) taskAtIndex: (int) index
{
    return [[self taskArray] objectAtIndex:index];    

    //NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

-(CS132Task*) topTask
{
    CS132Task* retval = [self taskAtIndex:ROOT_INDEX];

    //NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    //CS132Task* get =
    return retval;
}

-(NSString*) description
{
    NSString* retval = nil;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}
@end
