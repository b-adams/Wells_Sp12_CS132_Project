/**
 @file CS132Manager.m
 @author CS132 Class
 @date 5/18/12
 @brief Heap implementation
 */

#import "CS132Manager.h"
#import "CS132Heap.h"
#import "CS132Task.h"

@implementation CS132Manager
@synthesize tasksCompleted;
@synthesize tasksToDo;
@synthesize topTask;

#warning Implementation needed (Dlittle)
- (id)init {
    self = [super init];
    if (self) {
        NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    }
    return self;
}

-(int) countTasksToDo
{
    return [tasksToDo numberOfTasks];
}

#warning Implementation needed (CLeBerth)
-(void) fixTopTask
{
    //NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    //Put the pointer pointing to the task that is now finished to point to the root of the heap...
    
    [self setTopTask: [[self tasksToDo] topTask]];
    
}

#warning Implementation needed (DLittle)
-(void) spendTimeOnTopTask:(int) seconds
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

#warning Implementation needed (DLittle)
-(void) changeRemainingTimeTo:(int) seconds
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

#warning Implementation needed (CLeBerth)
-(void) addTaskWithName: (NSString*) newName
         andDescription: (NSString*) newDesc
                 andDue: (NSDate*) newDue
        andTimeRequired: (int) newTimeNeeded
{
    //NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    //Set up name, description, due date, and time needed.... How? Do I use initWith... ??
    CS132Task* taskCreated = [[CS132Task alloc] 
                       initWithName:newName 
                     andDescription:newDesc 
                         andDueDate:newDue 
                    andTimeEstimate:newTimeNeeded];
    [[self tasksToDo] addTask:taskCreated];
    
}

#warning Implementation needed (KEvans)
-(NSString*) description
{
    NSString* retval = nil;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;    
}
@end
