# Reminder class testing

# require "reminder"

# RSpec.describe Reminder do
#   it "reminds the user to perform a task" do
#     reminder = Reminder.new("Kay")
#     reminder.remind_me_to("Walk the dog")
#     result = reminder.remind()
#     expect(result).to eq "Walk the dog, Kay!"
#   end
# end

# Error testing

require "reminder"

RSpec.describe Reminder do
  context "when no task is set" do
    it "fails" do
      reminder = Reminder.new("Kay")
      expect { reminder.remind() }.to raise_error "No reminder set!"
    end
  end
end
