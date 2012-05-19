/**
 @file TMDocument.h
 @author Bryant Adams
 @date 2012/05/01
*/

#import <Cocoa/Cocoa.h>
@class CS132Manager;

/**
 @brief User interface window controller
 
 Responsible for mediating between user controls and a CS132Manager
 task management instance.
 */
@interface TMDocument : NSDocument <NSTableViewDataSource>

/**
 @brief The task-tracking brains of the operation
 */
@property (strong) CS132Manager* taskTracker;


#pragma mark AllTabs
/**
 @brief A text box to display the remaining tasks
 */
@property (weak) IBOutlet NSTextField *dTasksRemaining;


#pragma mark Current Task
/**
 @brief Text box to display current task's description
 */
@property (unsafe_unretained) IBOutlet NSTextView *dCurrentTaskDescription;
/**
 @brief Text box to display current task's name
 */
@property (weak) IBOutlet NSTextField *dCurrentTaskName;
/**
 @brief Number box to display current task's time remaining
 */
@property (weak) IBOutlet NSTextField *dCurrentTaskTimeRemaining;
/**
 @brief Checkbox for user to indicate when they are actively working on current task
 */
@property (weak) IBOutlet NSButton *dTaskInProgress;

/**
 @brief Executed in response to user clicking 'working on it' checkbox
 @param sender The NSButton that was clicked
 */
- (IBAction)dChangeTaskActivity:(id)sender;

/**
 @brief Number box to display time spent so far on current task
 */
@property (weak) IBOutlet NSTextField *dCurrentTaskTimeSpent;
/**
 @brief Progress bar to show (time spent:time remaining)
 */
@property (weak) IBOutlet NSProgressIndicator *dCurrentTaskCompletion;
/**
 @brief Dropdown list of available time units (minutes, seconds, etc)
 */
@property (weak) IBOutlet NSPopUpButton *dCurrentTaskTimeUnits;

/**
 @brief Executed in response to user changing time unit
 @param sender The NSPopUpButton that was clicked
 */
- (IBAction)dChangeOfUnits:(id)sender;

/**
 @brief Date field for current task's date of creation
 */
@property (weak) IBOutlet NSDatePicker *dCurrentTaskDateEntered;
/**
 @brief Date field for current task's deadline
 */
@property (weak) IBOutlet NSDatePicker *dCurrentTaskDateDue;
/**
 @brief Progress bar to show (time since start date:time until end date)
 */
@property (weak) IBOutlet NSProgressIndicator *dCurrentTaskDateProgress;

#pragma mark New Task
/**
 @brief Text box for entry of name of a new task
 */
@property (weak) IBOutlet NSTextField *dNewTaskName;
/**
 @brief Text box for entry of description of a new task
 */
@property (unsafe_unretained) IBOutlet NSTextView *dNewTaskDescription;
/**
 @brief Number box for entry of time estimate of a new task
 */
@property (weak) IBOutlet NSTextField *dNewTaskDuration;
/**
 @brief Date field for entry of deadline of a new task
 */
@property (weak) IBOutlet NSDatePicker *dNewTaskDueDate;
/**
 @brief Dropdown menu to select units of time estimate
 */
@property (weak) IBOutlet NSPopUpButton *dNewTaskTimeUnit;

/**
 @brief Executed in response to user clicking "Add Task" button
 @param sender The NSButton the user clicked
 */
- (IBAction)dAddTask:(id)sender;

/**
 @brief Executed in response to user entering a new time in the time-remaining box
 @param sender The NSTextField the user entered data into
 */
- (IBAction)dUpdateTimeRemaining:(id)sender;
/**
 @brief Refresh all the information in the 'current task' tab to reflect current top task
 */
- (void) updateCurrentTaskDisplay;
/**
 @brief Executed in response to a regularly fired timer.
 @param theTimer The NSTimer that fired
 */
- (void)workTicker:(NSTimer*)theTimer;

/**
 @brief Stop the timer and force the Task Manager to check its top entry
 */
- (void)stopWorkOnCurrentTask;

/**
 @brief Utility function for converting time units based on user preference
 @param theButton Which time-unit popup button to pull time information from
 @returns the ratio of seconds to selected units (1 for seconds, 60 for minutes, 1440 for hours, etc)
 */
-(int) multiplierForUnitSelector:(NSPopUpButton*) theButton;

/**
 @brief The currently active unit multiplication factor
 */
@property int unitMultiplier;
/**
 @brief Executed in response to the (?) debug button
 @param sender The button that was clicked
 */
- (IBAction)dumpDebugInfo:(id)sender;
@end
