require "counter"

RSpec.describe Counter do
  it "initially reports a count of zero" do
    counter = Counter.new
    expect(counter.report).to eq "Counted to 0 so far."
  end

  it "count to the the added value with one addition being present" do
    counter = Counter.new
    counter.add(2)
    expect(counter.report).to eq "Counted to 2 so far."
  end

  it "count to the the added value with multiple addition being present" do
    counter = Counter.new
    counter.add(2)
    counter.add(3)
    counter.add(5)
    expect(counter.report).to eq "Counted to 10 so far."
  end
end

# require "counter"

# RSpec.describe Counter do
#
# end
