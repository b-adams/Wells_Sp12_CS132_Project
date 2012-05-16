/**
 @file CS132Heap.m
 @author CS132 Class
 @date 5/15/12
 @brief Heap implementation
 */


#import "CS132Heap.h"
#import "CS132Task.h"


@implementation CS132Heap

@synthesize taskArray = DNU_tickTock;
@synthesize lastUsedIndex = DNU_mrPopperPenguins;

- (id)init {
    self = [super init];
    if (self) {
        NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    }
    return self;
}

-(int) numberOfTasks
{
    int retval = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
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
    [taskArray exchangeObjectAtIndex:[taskArray indexOfObject:[self topTask]] withObjectAtIndex:[self lastUsedIndex]];
    
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
    BOOL retval = NO;
    retval=[self isValidIndex:[self indexOfParentOf:index]];
    return retval;
}

-(BOOL) hasLeftChild: (int) index
{
    BOOL retval = NO;
    retval=return [self isValidIndex:[self indexOfLeftChildOf:index]];
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
    return [taskArray description];
}
@end
