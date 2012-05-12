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
   andTimeEstimate: (NSTimeInterval) seconds
{
    self = [super init];
    if (self) {
        [self setTaskName: aName];
        [self setTaskDescription: aDescription];
        [self setDateDue: dueDate];
        [self setTimeExpected: seconds];
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
    if ([self timeRemaining] == 0) 
    {
        return YES;
    }
    else
    {
        return NO;
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
    BOOL working = YES;
    none=0;
    done=100;
    int amountOfProgress;
    amountOfProgress=([self timeRemaining] - [self timeSpent])/ [self timeRemaining] +[self timeSpent];
    
    while (working == YES)
    {
        for(int i=0; i<done; i++)
        {
            amountOfProgress=amountOfProgress;
            return amountOfProgress;
        }
            
        if (done==100)
        {
            working=NO;
        }
        else
        {
            working=YES;
        }
            
    }
   
    return amountOfProgress;
}

-(int) progressOfDateFrom:(int) none
                       to:(int) done
{
    int retval = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}


@end
