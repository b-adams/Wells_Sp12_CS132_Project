/**
 @file CS132Manager.h
 @author CS132 Class and Bryant Adams
 @date 5/18/12
 @brief Heap implementation
 @assistant Professor Adams
 @assistant Dauris Little
 */

#import <Foundation/Foundation.h>
#define ROOT_INDEX 1
@class CS132Heap;
@class CS132Task;


@interface CS132Manager : NSObject
@property (strong) NSMutableArray* tasksCompleted;
@property (strong) CS132Heap* tasksToDo;
@property (weak) CS132Task* topTask;
-(void) fixTopTask;

-(void) spendTimeOnTopTask:(int) seconds;
-(void) changeRemainingTimeTo:(int) seconds;

-(void) addTaskWithName: (NSString*) newName
         andDescription: (NSString*) newDesc
                 andDue: (NSDate*) newDue
        andTimeRequired: (int) newTimeNeeded;

-(int) countTasksToDo;
@end
