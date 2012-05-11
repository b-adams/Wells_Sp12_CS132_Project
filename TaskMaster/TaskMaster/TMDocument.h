//
//  TMDocument.h
//  TaskMaster
//
//  Created by Bryant Adams on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class CS132Manager;

@interface TMDocument : NSDocument <NSTableViewDataSource>

@property (strong) CS132Manager* taskTracker;


#pragma mark AllTabs
@property (weak) IBOutlet NSTextField *dTasksRemaining;


#pragma mark Current Task
@property (unsafe_unretained) IBOutlet NSTextView *dCurrentTaskDescription;
@property (weak) IBOutlet NSTextField *dCurrentTaskName;
@property (weak) IBOutlet NSTextField *dCurrentTaskTimeRemaining;
@property (weak) IBOutlet NSButton *dTaskInProgress;
- (IBAction)dChangeTaskActivity:(id)sender;

@property (weak) IBOutlet NSTextField *dCurrentTaskTimeSpent;
@property (weak) IBOutlet NSProgressIndicator *dCurrentTaskCompletion;
@property (weak) IBOutlet NSPopUpButton *dCurrentTaskTimeUnits;
- (IBAction)dChangeOfUnits:(id)sender;

@property (weak) IBOutlet NSDatePicker *dCurrentTaskDateEntered;
@property (weak) IBOutlet NSDatePicker *dCurrentTaskDateDue;
@property (weak) IBOutlet NSProgressIndicator *dCurrentTaskDateProgress;

#pragma mark New Task
@property (weak) IBOutlet NSTextField *dNewTaskName;
@property (unsafe_unretained) IBOutlet NSTextView *dNewTaskDescription;
@property (weak) IBOutlet NSTextField *dNewTaskDuration;
@property (weak) IBOutlet NSDatePicker *dNewTaskDueDate;
@property (weak) IBOutlet NSPopUpButton *dNewTaskTimeUnit;
- (IBAction)dAddTask:(id)sender;

- (IBAction)dUpdateTimeRemaining:(id)sender;
- (void) updateCurrentTaskDisplay;
- (void)workTicker:(NSTimer*)theTimer;

- (void)stopWorkOnCurrentTask;

-(int) multiplierForUnitSelector:(NSPopUpButton*) theButton;

@property int unitMultiplier;
- (IBAction)dumpDebugInfo:(id)sender;
@end
