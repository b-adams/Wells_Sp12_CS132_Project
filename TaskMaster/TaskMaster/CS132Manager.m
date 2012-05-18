/**
 * @file CS132Manager.m
 * @author Professor Adams
 * @author Dauris Little
 * @author Constance LeBerth
 * @author Keegan Evans
 * @brief TaskMaster 
 * @date 5/18/12
 * @status Program is complete 
 * @assistance Professor Adams
 * @assistance Constance LeBerth
 */

#import "CS132Manager.h"
#import "CS132Heap.h"
#import "CS132Task.h"

@implementation CS132Manager
@synthesize tasksCompleted;
@synthesize tasksToDo;
@synthesize topTask;

- (id)init {
    self = [super init];
    if (self) {
        [self setTasksCompleted:[NSMutableArray array]];
        [self setTasksToDo:[[CS132Heap alloc] init]];
        [self setTopTask:[[CS132Task alloc] init]];
    }
    return self;
}

-(int) countTasksToDo
{
    return [tasksToDo numberOfTasks];
}

-(void) fixTopTask
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

-(void) spendTimeOnTopTask:(int) seconds
{
    [[self topTask] setTimeSpent:[[self topTask] timeSpent] + seconds];
    
    [[self topTask] setTimeRemaining:[[self topTask] timeRemaining] - seconds];
    //NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
     
}

-(void) changeRemainingTimeTo:(int) seconds
{
    [[self topTask] setTimeRemaining:seconds];
    
    [[self tasksToDo] bubbleDown:ROOT_INDEX];
    
    [self fixTopTask]; 
      //NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

-(void) addTaskWithName: (NSString*) newName
         andDescription: (NSString*) newDesc
                 andDue: (NSDate*) newDue
        andTimeRequired: (int) newTimeNeeded
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

-(NSString*) description
{
    NSString* retval = nil;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;    
}
@end
