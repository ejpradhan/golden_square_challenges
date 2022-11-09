require "counter"

RSpec.describe Counter do
  it "counts to 2" do
    counter = Counter.new
    counter.add(2)
    result = counter.report
    expect(result).to eq "Counted to 2 so far."
  end
end

# require "counter"

# RSpec.describe Counter do
#   it "counts to 0" do
#     counter = Counter.new
#     result = counter.report
#     expect(counter.report).to eq "Counted to 0 so far."
#   end
# end
