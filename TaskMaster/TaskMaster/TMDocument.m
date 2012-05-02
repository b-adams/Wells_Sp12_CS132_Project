//
//  TMDocument.m
//  TaskMaster
//
//  Created by Bryant Adams on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TMDocument.h"

@implementation TMDocument
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

@synthesize cCompletedTasks;

- (id)init
{
    self = [super init];
    if (self) {
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
    return YES;
}

#pragma mark User Interface Methods
- (IBAction)dChangeOfUnits:(id)sender
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stub", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    NSLog(@"SENDER: %@\n\tselectedItem: %@\n\tindexOfSelectedItem: %ld\n\ttitleOfSelectedItem: %@\n\n", 
          sender, [sender selectedItem], [sender indexOfSelectedItem], [sender titleOfSelectedItem]);
}
- (IBAction)dChangeTaskActivity:(id)sender
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stub", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    NSLog(@"SENDER: %@\n\tstate: %ld\n\n", sender, [sender state]);
}
- (IBAction)dAddTask:(id)sender
{
    NSLog(@"\n\tStatus=<%@> Class=<%@> Selector=<%@>", @"Stub", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    NSLog(@"SENDER: %@\n\n", sender);
}
@end
