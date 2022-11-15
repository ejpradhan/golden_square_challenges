# Phone Numbers Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

> As a user 
> So that I can keep track of my phone numbers
> I want to keep record of all phone numbers  I use in my entries


## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class PhoneBook 
def initializer
# ...
end

def extract_numbers(text) # text is a string representing a journal entry
# returns nothing
end

def list 
# returns a list of strings representing phone numbers
end


```
## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby

# EXAMPLE

# 1
phone_book = PhoneBook.new
phone_book.list   # => [] empty list

# 2
phone_book = PhoneBook.new
phone_book.extract_numbers("07800000000")
phone_book.list # => ["07800000000"]

# 3 
phone_book = PhoneBook.new
phone_book.extract_numbers("The number 07800000000 I called the other day")
phone_book.list # => ["07800000000"]

# 4 
phone_book = PhoneBook.new
phone_book.extract_numbers("My favourites: 07800000000, 07800000001 ")
phone_book.list # => ["07800000000, 07800000001"]

# 5 
phone_book = PhoneBook.new
phone_book.extract_numbers("My favourites.")
phone_book.list # => []

# 6
phone_book = PhoneBook.new
phone_book.extract_numbers("My friend Sarah is 07800000000")
phone_book.extract_numbers("My friend George is 07800000001")
phone_book.list # => ["0780000000, 07800000001"]

# 7 -too few digits
phone_book = PhoneBook.new
phone_book.extract_numbers("My friend George is 0780000001")
phone_book.list # => []

# 8 - no duplicates 
phone_book = PhoneBook.new
phone_book.extract_numbers("My friend Sarah is 0780000000")
phone_book.extract_numbers("My mate Sarah is 0780000000")
phone_book.list # => ["0780000000"]

```
## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


