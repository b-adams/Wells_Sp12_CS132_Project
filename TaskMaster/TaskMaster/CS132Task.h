//
//  CS132Task.h
//  TaskMaster
//
//  Created by Bryant Adams on 5/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CS132Task : NSObject

@property (strong) NSString* taskName;

@property (strong) NSString* taskDescription;

@property (strong) NSDate* dateDue;

@property (strong) NSDate* dateCreated;

@property NSTimeInterval timeRemaining;

@property (strong) NSDate* dateCompleted;

@property NSTimeInterval timeSpent;

@property NSTimeInterval timeExpected;

-(NSDate*) dateEffective;

-(NSDate*) effectiveDate;

-(BOOL) isCompleted;

-(id) initWithName: (NSString*) name
    andDescription: (NSString*) description
        andDueDate: (NSDate*) dueDate
   andDateCreated: (NSTimeInterval) date
  andTimeRemaining: (NSTimeInterval) seconds
   andDateComplete: (NSDate*) dateCompleted
   andTimeExpected: (NSTimeInterval) expected
      andTimeSpent: (NSTimeInterval) spent;

-(NSComparisonResult) compare: (CS132Task*) anotherTask;

-(int) progressOfCompletionFrom:(int) none
                             to:(int) done;

-(int) progressOfDateFrom:(int) none
                       to:(int) done;

@end
