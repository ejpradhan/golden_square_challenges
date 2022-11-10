# Reminder  class testin v.1

# class Reminder
#   def initialize(name)
#     @name = name
#   end

#   def remind_me_to(task)
#     @task = task
#   end

#   def remind()
#     return "#{@task}, #{@name}!"
#   end
# end

# reminder = Reminder.new("Kay")
# reminder.remind_me_to("Walk the dog")
# puts reminder.remind()

# Testing errors
class Reminder
  def initialize(name)
    @name = name
  end

  def remind_me_to(task)
    @task = task
  end

  def remind()
    # Look here! We want to fail if there is no reminder yet.
    fail "No reminder set!" if @task.nil?
    return "#{@task}, #{@name}!"
  end
end

# reminder = Reminder.new("Kay")
# reminder.remind
# no reminder set --> No reminder set!

# reminder = Reminder.new("Kay")
# reminder.remind_me_to("Cook")
# p reminder.remind
#  if we set a task /reminder set --> "Cook, Kay!"
