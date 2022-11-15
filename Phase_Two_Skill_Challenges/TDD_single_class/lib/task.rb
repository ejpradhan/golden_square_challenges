class ToDoTracker
  def initialize
    @todos = []
  end

  def list
    return @todos
  end

  def add(item)
    @todos << item
  end

  def completed(item)
    fail "This task is not on the list" if !@todos.include? item
    @todos.delete(item)
  end
end
