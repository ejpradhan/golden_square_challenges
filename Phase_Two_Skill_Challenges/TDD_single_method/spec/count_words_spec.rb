# Design

# A method called count_words that takes a string as an argument
# and returns the number of words in that string.

require "count_words"

RSpec.describe "count_words method" do
  context "when given an empty string" do
    it "returns 0" do
      expect(count_words("")).to eq 0
    end
  end

  context "when given a sentence with 5 words" do
    it "returns 5" do
      result = count_words("")
      expect(count_words("This is a nice day")).to eq 5
    end
  end

  context "when given a sentence with 3 words and additional white spaces" do
    it "returns 3" do
      result = count_words("")
      expect(count_words("  This      is      me    ")).to eq 3
    end
  end
end
