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

#warning Implementation needed (KEvans)
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

#warning Implementation needed (DLittle)
-(NSDate*) dateEffective
{
    NSDate* modifiedDueDate = nil;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return modifiedDueDate;
}

-(NSDate*) effectiveDate 
{
    //effectiveDate is when it needs to be start...
    //Compare: dateDue - timeRemaining 
             //NSDate  - NSTimeInterval -> NSDate
             //*Look at NSDate's Compare…*
    //newDate = Date Due - Time Remaining
    
    return [NSDate dateWithTimeInterval:-[self timeRemaining] 
                              sinceDate:[self dateDue]];
}

-(BOOL) isCompleted
{
    return [self dateCompleted] != nil;
}


#warning Implementation needed (DLittle)
-(NSString*) description 
{
    NSString* retval = nil;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

#warning Implementation needed (CLeBerth)
-(NSComparisonResult) compare: (CS132Task*) anotherTask
{
    NSComparisonResult retval = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

#warning Implementation needed (KEvans)
-(int) progressOfCompletionFrom:(int) none
                             to:(int) done
{
    int retval = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

#warning Implementation needed (DLittle)
-(int) progressOfDateFrom:(int) none
                       to:(int) done
{
    int retval = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}


@end
