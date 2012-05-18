//
//  CS132Task.m
//  TaskMaster
//
//  Created by Bryant Adams on 5/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CS132Task.h"

@implementation CS132Task

{
    NSString* DNU_taskName;
    NSString* DNU_taskDescription;
    NSDate* DNU_dateDue;
    NSDate* DNU_dateCreated;
    NSTimeInterval DNU_timeRemaining;
    NSDate* DNU_dateCompleted;
    NSTimeInterval DNU_timeExpected;
    NSTimeInterval DNU_timeSpent;
}

@synthesize taskName = DNU_taskName;

@synthesize taskDescription = DNU_taskDescription;

@synthesize dateDue = DNU_dateDue;

@synthesize dateCreated = DNU_dateCreated;

@synthesize timeRemaining = DNU_timeRemaining;

@synthesize dateCompleted = DNU_dateCompleted;

@synthesize timeExpected = DNU_timeExpected;

@synthesize timeSpent = DNU_timeSpent;

-(id) initWithName: (NSString*) aName
    andDescription: (NSString*) aDescription
        andDueDate: (NSDate*) dueDate
   andDateCreated: (NSTimeInterval) date
  andTimeRemaining:(NSTimeInterval) seconds 
   andDateComplete:(NSDate *)dateCompleted 
   andTimeExpected:(NSTimeInterval)expected 
      andTimeSpent:(NSTimeInterval)spent
{
    self = [super init];
    if (self) 
    {
        [self setTaskName: aName];
        [self setTaskDescription: aDescription];
        [self setDateDue: dueDate];
        [self setTimeExpected: expected];
        [self setTimeRemaining: seconds]; 
        [self setDateCreated: [NSDate date]];
        [self setTimeSpent: 0];
        [self setDateCompleted: nil];
    }
         
    return self;
}

-(NSDate*) dateEffective
{
    NSDate* modifiedDueDate = nil;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return modifiedDueDate;
}
-(NSDate*) effectiveDate 
{
    NSDate* retval = nil;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

-(BOOL) isCompleted
{
    if ([self dateCompleted] == nil) 
    {
        return NO;
    }
    else
    {
        return YES;
    }
}


-(NSString*) description 
{
    NSString* retval = nil;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

-(NSComparisonResult) compare: (CS132Task*) anotherTask
{
    NSComparisonResult retval = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

-(int) progressOfCompletionFrom:(int) none
                             to:(int) done
{
    float amountOfProgress;
    amountOfProgress=([self timeSpent] / ([self timeRemaining] + [self timeSpent]));
    
    return (none + amountOfProgress*(done-none));
}

-(int) progressOfDateFrom:(int) none
                       to:(int) done
{
    int retval = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}


@end
