/**
 @file CS132Task.m
 @author CS132 Class
 @date 5/18/12
 @brief Heap implementation
 */

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

-(NSDate*) dateEffective
{
    NSDate* modifiedDueDate = nil;
    //NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    modifiedDueDate = [self effectiveDate];
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


-(NSString*) description 
{
    NSString* retval = nil;

    retval = [NSString stringWithFormat:@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd)];
    return retval;
}

-(NSComparisonResult) compare: (CS132Task*) anotherTask
{
    NSComparisonResult NDOrder = NAN;
    //NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    //Needs to compare the dateEffective of one task to another
    //must use/call dateEffective...
        //[anotherTask dateEffective];
        //[self dateEffective];
    //How do you compare two tasks and produce a number....Got it Answered
    
    NDOrder = [[self dateEffective] compare: [anotherTask dateEffective]];
    
    return NDOrder;
}

#warning Implementation needed (KEvans)
-(int) progressOfCompletionFrom:(int) none
                             to:(int) done
{
    int retval = NAN;
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}

-(int) progressOfDateFrom:(int) none
                       to:(int) done
{
    int retval = NAN;
    int outPutRange = done - none;
    NSTimeInterval inPutRange = [[self dateDue] timeIntervalSinceDate:[self dateCreated]];
    NSTimeInterval inPutValue = [[NSDate date] timeIntervalSinceDate:[self dateCreated]];
    
    retval = (inPutValue / inPutRange) * outPutRange + none;
    //NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return retval;
}


@end
