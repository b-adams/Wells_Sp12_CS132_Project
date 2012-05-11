//
//  TMDocument.m
//  TaskMaster
//
//  Created by Bryant Adams on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TMDocument.h"
#import "CS132Manager.h"
#import "CS132Task.h"
#define TICK_SIZE 5
@implementation TMDocument
{
    NSTimer* ticker;
}
@synthesize taskTracker;
@synthesize dTasksRemaining;

@synthesize dCurrentTaskDescription;
@synthesize dCurrentTaskName;
@synthesize dCurrentTaskTimeRemaining;
@synthesize dTaskInProgress;

@synthesize dCurrentTaskTimeSpent;
@synthesize dCurrentTaskCompletion;
@synthesize dCurrentTaskTimeUnits;

@synthesize dCurrentTaskDateEntered;
@synthesize dCurrentTaskDateDue;
@synthesize dCurrentTaskDateProgress;

@synthesize dNewTaskName;
@synthesize dNewTaskDescription;
@synthesize dNewTaskDuration;
@synthesize dNewTaskDueDate;
@synthesize dNewTaskTimeUnit;

@synthesize unitMultiplier;

- (id)init
{
    self = [super init];
    if (self) {
        [self setTaskTracker: [[CS132Manager alloc] init]];
        
        // Add your subclass-specific initialization here.
        // If an error occurs here, return nil.
    }
    return self;
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"TMDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
    [dNewTaskDueDate setDateValue:[NSDate date]];
    [self setUnitMultiplier:[self multiplierForUnitSelector:dCurrentTaskTimeUnits]];
    [self updateCurrentTaskDisplay];
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    /*
     Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning nil.
    You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
    */
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return nil;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    /*
    Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning NO.
    You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    If you override either of these, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
    */
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return YES;
}

+ (BOOL)autosavesInPlace
{
    return NO;
}

#pragma mark User Interface Methods
- (IBAction)dChangeOfUnits:(id)sender
{
//    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stub", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
//    NSLog(@"SENDER: %@\n\tselectedItem: %@\n\tindexOfSelectedItem: %ld\n\ttitleOfSelectedItem: %@\n\n", 
//          sender, [sender selectedItem], [sender indexOfSelectedItem], [sender titleOfSelectedItem]);
    [self setUnitMultiplier:[self multiplierForUnitSelector:sender]];
    [self updateCurrentTaskDisplay];
}
- (IBAction)dChangeTaskActivity:(id)sender
{
//    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stub", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
//    NSLog(@"SENDER: %@\n\tstate: %ld\n\n", sender, [sender state]);
    printf("\nChange Task Activity\n");

    if(![sender state]) //Stopped working
    {
        int newTime = [dCurrentTaskTimeRemaining intValue];
        [taskTracker changeRemainingTimeTo:newTime];
        [self stopWorkOnCurrentTask];
    } else {
        ticker = [NSTimer scheduledTimerWithTimeInterval:TICK_SIZE
                                                  target:self 
                                                selector:@selector(workTicker:)
                                                userInfo:nil
                                                 repeats:YES];
    }
    [self updateCurrentTaskDisplay];
}

-(void)stopWorkOnCurrentTask
{
    [dTaskInProgress setState:0]; //in case it wasn't already
    if(ticker)
    {
        [ticker invalidate];
        ticker=nil;
    }
    [taskTracker fixTopTask];
}

-(int) multiplierForUnitSelector:(NSPopUpButton*) theButton
{
    if([[theButton titleOfSelectedItem] isEqual:@"Seconds"]) return 1;
    if([[theButton titleOfSelectedItem] isEqual:@"Minutes"]) return 1*60;
    if([[theButton titleOfSelectedItem] isEqual:@"Hours"]) return 1*60*60;
    if([[theButton titleOfSelectedItem] isEqual:@"Days"]) return 1*60*60*24;
    return 0;
}
- (IBAction)dAddTask:(id)sender
{
//    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stub", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
//    NSLog(@"SENDER: %@\n\n", sender);
//    NSLog(@"\n\tName: %@\n\tDescription: %@\n\tDue: %@",
//          [dNewTaskName stringValue], [dNewTaskDescription string], [dNewTaskDueDate stringValue]);
    printf("\nAdd Task\n");
    NSTimeInterval timeMagnitude = [dNewTaskDuration doubleValue];
    int timeUnits = [self multiplierForUnitSelector:dNewTaskTimeUnit];
    [dTaskInProgress setState:NO];
    [taskTracker addTaskWithName:[dNewTaskName stringValue]
                  andDescription:[[dNewTaskDescription string] copy]
                          andDue:[dNewTaskDueDate dateValue]
                 andTimeRequired:timeMagnitude * timeUnits];
    [self updateCurrentTaskDisplay];
    [dNewTaskName setStringValue:@""];
    [dNewTaskDescription setString:@""];
    [dNewTaskDuration setIntValue:0];
}
     
- (IBAction)dUpdateTimeRemaining:(id)sender 
{
    printf("\nUpdate Time Remaining\n");
    CS132Task* previousTask = [taskTracker topTask];
    int newTime = [dCurrentTaskTimeRemaining doubleValue] * [self unitMultiplier];
    [taskTracker changeRemainingTimeTo:newTime];
    if([taskTracker topTask] != previousTask) [self stopWorkOnCurrentTask];
    [self updateCurrentTaskDisplay];
}

-(void) updateCurrentTaskDisplay
{
    CS132Task* currentTask = [taskTracker topTask];
    if(currentTask)
    {
        [dTaskInProgress setEnabled:YES];
        [dCurrentTaskTimeRemaining setEnabled:YES];
        [dCurrentTaskName setStringValue: [currentTask taskName]];
        [dCurrentTaskDescription setString: [currentTask taskDescription]];
        [dCurrentTaskDateDue setDateValue: [currentTask dateDue]];
        [dCurrentTaskDateEntered setDateValue: [currentTask dateCreated]];
        [dCurrentTaskTimeSpent setDoubleValue: [currentTask timeSpent]/[self unitMultiplier]];
        [dCurrentTaskTimeRemaining setDoubleValue: [currentTask timeRemaining]/[self unitMultiplier]];
        
        if([currentTask timeRemaining]<0)
        {
            [dCurrentTaskCompletion setIndeterminate:YES];
            [dCurrentTaskCompletion startAnimation:self];
        } else {
            [dCurrentTaskCompletion setIndeterminate:NO];
            [dCurrentTaskCompletion setDoubleValue: (double)[currentTask progressOfCompletionFrom:0 to:100]];
        }

        if([[currentTask dateDue] compare:[NSDate date]]==NSOrderedAscending)
        {
            [dCurrentTaskDateProgress setIndeterminate:YES];
            [dCurrentTaskDateProgress startAnimation:self];
        } else {
            [dCurrentTaskDateProgress setIndeterminate:NO];
            [dCurrentTaskDateProgress setDoubleValue: (double)[currentTask progressOfDateFrom:0 to:100]];
        }

    } else {
        [dTaskInProgress setEnabled:NO];
        [dCurrentTaskTimeRemaining setEnabled:NO];
        [dCurrentTaskName setStringValue:@"No Task"];
        [dCurrentTaskDescription setString:@""];
        [dCurrentTaskDateDue setDateValue: [NSDate date]];
        [dCurrentTaskDateEntered setDateValue: [NSDate date]];
        [dCurrentTaskTimeSpent setIntValue:0];
        [dCurrentTaskTimeRemaining setIntValue:0];    
        [dCurrentTaskDateProgress setIndeterminate:YES];
        [dCurrentTaskCompletion setIndeterminate:YES];
        [dCurrentTaskDateProgress stopAnimation:self];
        [dCurrentTaskCompletion stopAnimation:self];
        [dTaskInProgress setState:0]; //Turn off checkbox
    }
    [dTasksRemaining setIntValue:[taskTracker countTasksToDo]];
    
}

- (void)workTicker:(NSTimer*)theTimer
{
//    NSLog(@"Tick");
    if(![dTaskInProgress state]) [theTimer invalidate];
    [taskTracker spendTimeOnTopTask:TICK_SIZE];
    [self updateCurrentTaskDisplay];
}

#pragma mark Feeding information to the table view
-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return [[taskTracker tasksCompleted] count];
}
-(id)tableView:(NSTableView *)tableView 
objectValueForTableColumn:(NSTableColumn *)tableColumn 
           row:(NSInteger)row
{
    CS132Task* theTask = nil;
    theTask = [[taskTracker tasksCompleted] objectAtIndex:row];
    id colName = [[tableColumn headerCell] stringValue];
    if([colName isEqual:@"Task"]) {
        return [theTask taskName];
    } else if([colName isEqual:@"Completed"]) {
        return [theTask dateCompleted];
    } else if([colName isEqual:@"Deadline"]) {
        return [theTask dateDue];
    } else if([colName isEqual:@"Time Taken"]) {
        return [NSNumber numberWithDouble:[theTask timeSpent]]; 
    } else if([colName isEqual:@"Time Expected"]) {
        return [NSNumber numberWithDouble:[theTask timeExpected]]; 
    } else {
        NSLog(@"What column is %@?",colName);
    }
    return @"???";
}

- (IBAction)dumpDebugInfo:(id)sender {
    NSLog(@"MANAGER DUMP\n\n%@\n\n",taskTracker);
}
@end
