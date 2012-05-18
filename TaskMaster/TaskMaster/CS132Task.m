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

@synthesize taskName=DNU_taskName;

@synthesize taskDescription=DNU_taskDescription;

@synthesize dateDue=DNU_dateDue;

@synthesize dateCreated=DNU_dateCreated;

@synthesize timeRemaining=DNU_timeRemaining;

@synthesize dateCompleted=DNU_dateCompleted;

@synthesize timeExpected=DNU_timeExpected;

@synthesize timeSpent=DNU_timeSpent;

-(id) initWithName: (NSString*) aName
    andDescription: (NSString*) aDescription
        andDueDate: (NSDate*) dueDate
   andTimeEstimate: (NSTimeInterval) seconds
{
    self = [super init];
    if (self) {
        NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
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
    //effectiveDate is when it needs to be start...
    //NSDate* newDate = [[NSDate alloc] init];
    //NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    //Compare: dateDue - timeRemaining 
             //NSDate  - NSTimeInterval -> NSDate
             //*Look at NSDate's Compare…*
    //newDate = Date Due - Time Remaining
    
    //newDate = [self timeRemaining];
    //[self setDateDue:[self dateDue] - newDate];
    
    return [NSDate dateWithTimeInterval:-[self timeRemaining] 
                              sinceDate:[self dateDue]];
}

-(BOOL) isCompleted
{
    BOOL retval = NO;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
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
    //Needs to compare the dateEffective of one task to another
    //must use/call dateEffective...
        //[anotherTask dateEffective];
        //[self dateEffective];
    //How do you compare two tasks and produce a number....Got it Answered

    
    
    return retval;
}

-(int) progressOfCompletionFrom:(int) none
                             to:(int) done
{
    int retval = NAN;
    return retval;
}

-(int) progressOfDateFrom:(int) none
                       to:(int) done
{
    int retval = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}


@end
