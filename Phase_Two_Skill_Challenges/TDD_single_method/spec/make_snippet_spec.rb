# Design

# A method called make_snippet that takes a string as an argument
# and returns the first five words and then a '...' if there are more than that.

require "make_snippet"

RSpec.describe "make_snippet method" do
  it "takes an empty string as an argument and returns an empty string" do
    result = make_snippet("")
    expect(result).to eq ""
  end

  it "takes a string which is less than 5 words in length, and returns the string" do
    result = make_snippet("this is four words")
    expect(result).to eq "this is four words"
  end

  it "takes a string which is 5 words in length, returns the string" do
    result = make_snippet("this is five words only")
    expect(result).to eq "this is five words only"
  end

  it "takes a string which is 6 words in length, returns the first 5 words" do
    result = make_snippet("one two three four five six")
    expect(result).to eq "one two three four five..."
  end
end
