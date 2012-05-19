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

- (id)init {
    self = [super init];
    if (self) {
        [self setTasksCompleted:[NSMutableArray array]];
        [self setTasksToDo:[[CS132Heap alloc] init]];
        [self setTopTask:nil];
    }
    return self;
}

-(int) countTasksToDo
{
    return [tasksToDo numberOfTasks];
}

-(void) fixTopTask
{
    [self setTopTask: [[self tasksToDo] topTask]];
}

-(void) spendTimeOnTopTask:(int) seconds
{
    [[self topTask] setTimeSpent:[[self topTask] timeSpent] + seconds];
    [[self topTask] setTimeRemaining:[[self topTask] timeRemaining] - seconds];
}

-(void) changeRemainingTimeTo:(int) seconds
{
    [[self topTask] setTimeRemaining:seconds];
    [[self tasksToDo] bubbleDown:ROOT_INDEX];
    [self fixTopTask]; 
}

-(void) addTaskWithName: (NSString*) newName
         andDescription: (NSString*) newDesc
                 andDue: (NSDate*) newDue
        andTimeRequired: (int) newTimeNeeded
{
//    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stub", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    CS132Task* taskCreated = [[CS132Task alloc] initWithName:newName 
                                              andDescription:newDesc 
                                                  andDueDate:newDue 
                                             andTimeEstimate:newTimeNeeded];
    [[self tasksToDo] addTask:taskCreated];
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"Top Task: %@, Tasks to Do: %@, Tasks Completed: %@",
            [self topTask],[self tasksToDo], [self tasksCompleted]];
}
@end
