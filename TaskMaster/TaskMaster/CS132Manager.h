//
//  CS132Manager.h
//  TaskMaster
//
//  Created by Bryant Adams on 5/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

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
