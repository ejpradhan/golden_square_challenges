require "string_builder"

RSpec.describe StringBuilder do
  it "it returns an empty string as output" do
    string_builder = StringBuilder.new
    expect(string_builder.output).to eq ""
  end

  it "returns a length of 0" do
    string_builder = StringBuilder.new
    expect(string_builder.size).to eq 0
  end

  context "given one addition of a string" do
    it "outputs that string" do
      string_builder = StringBuilder.new
      string_builder.add("hello")
      expect(string_builder.output).to eq "hello"
    end

    it "has a size of that string's length" do
      string_builder = StringBuilder.new
      string_builder.add("hello")
      expect(string_builder.size).to eq 5
    end
  end

  context "given many addition of a string" do
    it "outputs that string" do
      string_builder = StringBuilder.new
      string_builder.add("hello")
      string_builder.add("world")
      string_builder.add("sister")
      expect(string_builder.output).to eq "helloworldsister"
    end

    it "has a size of that string's length" do
      string_builder = StringBuilder.new
      string_builder.add("hello")
      string_builder.add("world")
      string_builder.add("sister")
      expect(string_builder.size).to eq 16
    end
  end
end
