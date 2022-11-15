require "task"

RSpec.describe ToDoTracker do
  context "when list is empty" do
    it "return an empty list" do
      to_do_tracker = ToDoTracker.new
      expect(to_do_tracker.list).to eq []
    end
  end

  context "when an item is added to the list" do
    it "returns the string" do
      to_do_tracker = ToDoTracker.new
      to_do_tracker.add("wash the dishes")
      expect(to_do_tracker.list).to eq ["wash the dishes"]
    end
  end

  context "when multiple items are added to the list" do
    it "returns them all" do
      to_do_tracker = ToDoTracker.new
      to_do_tracker.add("wash the dishes")
      to_do_tracker.add("cook lunch")
      expect(to_do_tracker.list).to eq ["wash the dishes", "cook lunch"]
    end
  end

  context "when an item is completes" do
    it "returns the incomplete task" do
      to_do_tracker = ToDoTracker.new
      to_do_tracker.add("wash the dishes")
      to_do_tracker.add("cook lunch")
      to_do_tracker.completed("wash the dishes")
      expect(to_do_tracker.list).to eq ["cook lunch"]
    end
  end

  context "when an item is completed but not added" do
    it "fails" do
      to_do_tracker = ToDoTracker.new
      to_do_tracker.add("wash the dishes")
      to_do_tracker.completed("wash the dishes")
      expect { to_do_tracker.completed("cook lunch") }.to raise_error "This task is not on the list"
    end
  end
end
