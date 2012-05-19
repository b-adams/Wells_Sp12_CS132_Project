#Constance LeBerth Documentation (Task)


/*
*Compares One Cs132 Task to another Task.
*param anotherTask the information to compare a task to
*returns the result of the comparasion
-(NSComparisionResult)compare:(CS132Task*)anotherTask

/*
*Compares the datedue to the timeRemaining By subtraction
*returns a pointer to an NADate which is the result of dateDue-timeRemaining
-(NSDate*)dateEffective

/*
*Computes the progress in terms of time from a starting point to completion
*param none is the starting integer of the progress (0)
*param done is the completion integer (Completion Time)
*returns an integer
-(int)progressInTimeFrom:(int)none To:(int)done

/*
*Computes the progress in terms of how completed the task is
*param none is the starting percentage of completion (0%)
*param done is the completion percentage (100%)
*returns an integer
-(int)progressInCompletionFrom:(int)none To:(int)done