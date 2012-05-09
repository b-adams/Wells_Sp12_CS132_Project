//
//  CS132Task.m
//  TaskMaster
//
//  Created by Bryant Adams on 5/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CS132Task.h"

@implementation CS132Task
{
    NSString* DNU_taskName;
    NSString* DNU_taskDescription;
    NSDate* DNU_dateDue;
    NSDate* DNU_dateCreated;
    NSTimeInterval* DNU_timeRemaining;
    NSDate* DNU_dateCompleted;
    NSTimeInterval* DNU_timeExpected;
    NSTimeInterval* DNU_timeSpent;
}

@synthesize taskName=DNU_taskName;

@synthesize taskDescription=DNU_taskDescription;

@synthesize dateDue=DNU_dateDue;

@synthesize dateCreated=DNU_dateCreated;

@synthesize timeRemaining=DNU_timeRemaining;

@synthesize dateCompleted=DNU_dateCompleted;

@synthesize timeExpected=DNU_timeExpected;

@synthesize timeSpent=DNU_timeSpent;



-(NSString *) taskName
{
   NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stub", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

-(NSString *)taskDescription
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stub", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

-(NSDate *) dateDue
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stub", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

-(NSDate *) dateCreated
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stub", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

-(NSTimeInterval *) timeSpent
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stub", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

-(NSTimeInterval *) timeRemaining
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stub", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

-(NSDate *) dateCompleted
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stub", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

-(NSTimeInterval *) timeInterval
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stub", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

@end
