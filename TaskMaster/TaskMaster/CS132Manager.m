//
//  CS132Manager.m
//  TaskMaster
//
//  Created by Bryant Adams on 5/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

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
        NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
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
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

-(void) changeRemainingTimeTo:(int) seconds
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
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
    return [NSString stringWithFormat:@"Top Task: %@, Tasks to Do: %@, Tasks Completed: %@", [self topTask],[self tasksToDo], [self tasksCompleted]];
}
@end
