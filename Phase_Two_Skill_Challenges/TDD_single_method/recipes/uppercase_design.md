# {{PROBLEM}} Method Design Recipe


## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

> As a user 
> So that I can analyse key words on my texts
> I want to see a list of uppercase words

## 2. Design the Method Signature

_Include the name of the method, its parameters , return value, and side effects._

```ruby
uppercase = extract_uppercase(text)
* text is a string, containing words "hello WORLD"
* uppercase is a list of uppercase words ["WORLD"]
```

# The method doesn't print anything or have any other side-effects

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# 1
extract_uppercase("hello WORLD")
# => ["WORLD"]

 # 2
extract_uppercase("")
# => []

# 3
extract_uppercase("hello world")
# => []

# 4
extract_uppercase("HELLO WORLD")
# => ["HELLO", "WORLD"]

# 5
extract_uppercase("HeLLO WoRLD")
# => []

# 6
extract_uppercase("HELLO! WORLD!")
# => ["HELLO", "WORLD"]

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._