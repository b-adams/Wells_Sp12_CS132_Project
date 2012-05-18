/**
 * @file CS132Task.m
 * @author Professor Adams
 * @author Dauris Little
 * @author Constance LeBerth
 * @author Keegan Evans
 * @brief TaskMaster
 * @date 5/18/12
 * @status Program is complete 
 * @assistance Professor Adams
 * @assistant Constance LeBerth
 */

#import "CS132Task.h"
#import "CS132Heap.h"
#import "CS132Manager.h"

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

    retval = [NSString stringWithFormat:@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd)];
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
    int retval = NAN;
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
