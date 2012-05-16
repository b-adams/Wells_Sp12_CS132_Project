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

#warning Implementation needed (DLittle)
- (id)init {
    self = [super init];
    if (self) {
        NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    }
    return self;
}

#warning Implementation needed (CLeBerth)
-(int) numberOfTasks
{
    int retval = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

#warning Implementation needed (KEvans)
-(void) bubbleDown: (int) indexOfTooBigNode
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

#warning Implementation needed (CLeBerth)
-(void) bubbleUp: (int) indexOfTooSmallNode
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

#warning Implementation needed (CLeBerth)
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
}

#warning Implementation needed (CLeBarth)
-(void) addTask: (CS132Task*) taskToAdd
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

#warning Implementation needed (KEvans)
-(BOOL) isValidIndex: (int) index
{
    BOOL retval = NO;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

#warning Implementation needed (CLeBerth)
-(int) indexOfParentOf: (int) index
{
    int retval = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}
#warning Implementation needed (DLittle)
-(int) indexOfLeftChildOf: (int) index
{
    int retval = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}
#warning Implementation needed (CLeBerth)
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

#warning Implementation needed (DLittle)
-(BOOL) hasRightChild: (int) index
{
    BOOL retval = NO;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

#warning Implementation needed (DLittle)
-(CS132Task*) taskAtIndex: (int) index
{
    CS132Task* retval = nil;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

#warning Implementation needed (DLittle)
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
