# Phone Numbers Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

>  As a user
> So that I can keep track of my tasks
> I want a program that I can add todo tasks to and see a list of them.
> As a user
> So that I can focus on tasks to complete
> I want to mark tasks as complete and have them disappear from the list.


## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
 
 class : class ToDoTracker
 Methods: initialize

          add
          to add a string to the array
          complete 
          to mark the task complete and delete them from the array of todos
          takes a string as a parameter
          returns nothing

          list
          shows the current todo list
          not taking parameters
          returns the string of todos



```
## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby

# EXAMPLE

# # 1 
# to_do_tracker = ToDoTracker.new
# to_do_tracker.list => []

# 2 
# to_do_tracker = ToDoTracker.new
# to_do_tracker.add("wash the dishes")
# to_do_tracker.list => ["wash the dishes"]

# 3 
# to_do_tracker = ToDoTracker.new
# to_do_tracker.add("wash the dishes")
# to_do_tracker.add("cook lunch")
# to_do_tracker.list => ["wash the dishes", "cook lunch"]

# 4
# to_do_tracker = ToDoTracker.new
# to_do_tracker.add("wash the dishes")
# to_do_tracker.add("cook lunch")
# to_do_tracker.completed("wash the dishes")
# to_do_tracker.list => ["cook lunch"]

# 5 
# to_do_tracker = ToDoTracker.new
# to_do_tracker.add("wash the dishes")
# to_do_tracker.completed("cook lunch")
# to_do_tracker.list =>raises an error -> ["This task is not on the list"]

```
## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


