# TaskMaster final collaborative project for CS132 (Spring 2012)

## Participants

* Prof. Adams
* Keegan Evans
* Constance LeBerth
* Dauris Little

## Model tasks

* Create CSTask class
* Create CSHeap class
* Create CSTaskManager class

### Task

#### Overview
Needs to store:

* Task name
* Task description
* Task creation date
* Task due date
* Time spent working on task
* Expected work time remaining until completion

Should also be able to compute

* Task priority, based on "duedate minus expected time remaining". Sooner is higher priority.

#### Design choices
<table>
	<tr><th>What a task needs to know</th><th>Data type</th><th>Property name</th></tr>
	<tr><td>name</td><td>NSString</td><td>taskName</td></tr>
	<tr><td>description</td><td>NSString</td><td>taskDescription</td></tr>
	<tr><td>due date</td><td>NSDate</td><td>dateDue</td></tr>
	<tr><td>creation date</td><td>NSDate</td><td>dateCreated</td></tr>
	<tr><td>time spent working</td><td>NSTimeInterval</td><td>timeSpent</td></tr>
	<tr><td>work time still needed</td><td>NSTimeInterval</td><td>timeRemaining</td></tr>
	<tr><td>date task was completed</td><td>NSDate</td><td>dateCompleted</td></tr>
	<tr><td>time task is expected to take</td><td>NSTimeInterval</td><td>timeExpected</td></tr>
</table>
	
<table>
	<tr><th>What a task needs to be able to do</th><th>Method for doing it</th></tr>
	<tr><td>Compare to another task - determine which is higher priority</td><td>-(NSComparisonResult) compare:(CS132Task*)anotherTask</td></tr>
	<tr><td>Get the 'priority date' or 'date you must begin by'</td><td>-(NSDate*) effectiveDate</td></tr>
	<tr><td>Code-completion friendly but less readable access to 'priority date'</td><td>-(NSDate*) dateEffective</td></tr>
	<tr><td>Compute time progress on a scale</td><td>-(int) progressInTimeFrom:(int)none to:(int)done</td></tr>
	<tr><td>Compute completion progress on a scale</td><td>-(int) progressInCompletionFrom:(int)none to:(int)done</td></tr>
</table>
### Heap

####Overview
Needs to store:

* Counter keeping track of the number of elements in the heap
* Other data needed to allow heap operations (root/last pointer, array, ...)

Needs to allow

* Insert a given element with a given priority
* Access the highest priority element
* Update a given element (already in the heap) to a new priority
* Remove the highest priority element

### TaskManager

Needs to store:

* Todo list (heap)
* Completed list (array)

Needs to allow:

* Add a new task (given task name, description, duedate, time expected)
* Access the current (highest priority) task
* Access the number of tasks left to do
* Finish top task
* Access completed tasks array
* Change the expected work time of the current task
* Spend time on top task
