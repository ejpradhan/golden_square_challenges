require "e_extractor"

RSpec.describe "e_extractor method" do
  it "given an empty string returns an empty string" do
    result = e_extractor("")
    expect(result).to eq ""
  end

  it "given a string without e's returns the same" do
    result = e_extractor("dfghjkl")
    expect(result).to eq "dfghjkl"
  end

  it "given a string with an e in it, it brings that to the start" do
    result = e_extractor("hello")
    expect(result).to eq "ehllo"
  end

  it "given a string with multiple e in it, it brings those to the start" do
    result = e_extractor("heeello")
    expect(result).to eq "eeehllo"
  end
end
