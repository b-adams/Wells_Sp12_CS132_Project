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

Needs to store:

* Task name
* Task description
* Task creation date
* Task due date
* Time spent working on task
* Expected work time remaining until completion

Should also be able to compute

* Task priority, based on "duedate minus expected time remaining". Sooner is higher priority.

### Heap

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

* Access the current (highest priority) task
* Change the expected work time of the current task
* Increase time spent and decrease expected time of the current task (simultaneously)
* Compute the percent amount of time that has passed from task creation to task duedate
* Compute the percent amount of work that has been done, out of the total work needed (done+remaining)
* Access the number of tasks to do
* Access the completed-tasks array
* Add a new task (given task name, description, duedate, etc)
