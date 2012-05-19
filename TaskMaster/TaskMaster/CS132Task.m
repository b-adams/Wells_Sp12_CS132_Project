/**
 @file CS132Task.m
 @author CS132 Class
 @date 5/18/12
 @brief Heap implementation
 */

#import "CS132Task.h"

@implementation CS132Task

@synthesize taskName;
@synthesize taskDescription;
@synthesize dateDue;
@synthesize dateCreated;
@synthesize timeRemaining;
@synthesize dateCompleted;
@synthesize timeExpected;
@synthesize timeSpent;

-(id) initWithName: (NSString*) aName
    andDescription: (NSString*) aDescription
        andDueDate: (NSDate*) dueDate
   andTimeEstimate: (NSTimeInterval) seconds
{
    self = [super init];
    if (self) 
    {
        [self setTaskName: aName];
        [self setTaskDescription: aDescription];
        [self setDateDue: dueDate];
        [self setTimeExpected: seconds];
        [self setTimeRemaining: seconds]; //Same as estimate
        [self setDateCreated: [NSDate date]]; //Now
        [self setTimeSpent: 0]; //New task, no time spent yet
        [self setDateCompleted: nil]; //Not yet completed
    }
    return self;
}

-(NSDate*) dateEffective
{
    return [self effectiveDate];
}

-(NSDate*) effectiveDate 
{
    return [NSDate dateWithTimeInterval:-[self timeRemaining] //subtracting time
                              sinceDate:[self dateDue]];
}

-(BOOL) isCompleted
{
    return [self dateCompleted] != nil;
}


-(NSString*) description 
{
    return [NSString stringWithFormat:@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", 
            @"Stubulous", NSStringFromClass([self class]), NSStringFromSelector(_cmd)];
}

-(NSComparisonResult) compare: (CS132Task*) anotherTask
{
    return [[self dateEffective] compare: [anotherTask dateEffective]];
}

-(int) progressOfCompletionFrom:(int) none
                             to:(int) done
{
    float amountOfProgress;
    int range = done - none;
    NSTimeInterval totalTime = ([self timeRemaining] + [self timeSpent]);
    amountOfProgress=([self timeSpent] / totalTime);
    
    return (none + amountOfProgress*range);
}

-(int) progressOfDateFrom:(int) none
                       to:(int) done
{
    int outPutRange = done - none;
    NSTimeInterval inPutRange = [[self dateDue] timeIntervalSinceDate:[self dateCreated]];
    NSTimeInterval inPutValue = [[NSDate date] timeIntervalSinceDate:[self dateCreated]];
    
    return (inPutValue / inPutRange) * outPutRange + none;
}


@end
