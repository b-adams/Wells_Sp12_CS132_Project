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
    if (index < ROOT_INDEX)
    {
        return NO;
    }
    else
    {
        if(index <= [self lastUsedIndex])
        {
            return YES;
        }
        else
        {
            return NO;
        }
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
