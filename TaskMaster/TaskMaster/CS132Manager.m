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
    CS132Task* theTask = [self topTask];
    if(!theTask) return; //No top task to spend time upon
    [theTask setTimeSpent:[theTask timeSpent] + seconds];
    [theTask setTimeRemaining:[theTask timeRemaining] - seconds];
}

-(void) changeRemainingTimeTo:(int) seconds
{
    CS132Task* theTask = [self topTask];
    if(!theTask) return; //No top task to spend time upon

    NSTimeInterval newTime = 0.0+seconds;

    [theTask setTimeRemaining:newTime];
    if(newTime <= 0)
    { //Task completed! Need to do stuff
        [theTask setDateCompleted:[NSDate date]]; //Completion=NOW
        [tasksCompleted addObject:theTask]; //Add to completed list
        [tasksToDo deleteTopTask]; //Remove from todo list
    } 
    else 
    { //Priority may have shifted and need adjustment
        [[self tasksToDo] bubbleDown:ROOT_INDEX];
    }
    [self fixTopTask]; //We may have a new top task
}

-(void) addTaskWithName: (NSString*) newName
         andDescription: (NSString*) newDesc
                 andDue: (NSDate*) newDue
        andTimeRequired: (int) newTimeNeeded
{
    CS132Task* taskCreated = [[CS132Task alloc] initWithName:newName 
                                              andDescription:newDesc 
                                                  andDueDate:newDue 
                                             andTimeEstimate:newTimeNeeded];
    [[self tasksToDo] addTask:taskCreated];
    [self fixTopTask]; //In case the new task is more important than the existing one
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"Top Task: %@, Tasks to Do: %@, Tasks Completed: %@",
            [self topTask],[self tasksToDo], [self tasksCompleted]];
}
@end
