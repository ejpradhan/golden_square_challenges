require "extract_uppercase"

RSpec.describe "extract_uppercase method" do
  it "returns an empty list when given an empty string" do
    expect(extract_uppercase("")).to eq []
  end

  it "returns an empty list when given a string with no uppercase words" do
    expect(extract_uppercase("hello world")).to eq []
  end

  it "returns only the uppercase words when given a string with mixed uppercase words" do
    expect(extract_uppercase("hello WORLD")).to eq ["WORLD"]
  end

  it "returns all uppercase words when given a string with all uppercase words" do
    expect(extract_uppercase("HELLO WORLD")).to eq ["HELLO", "WORLD"]
  end

  it "returns an empty list whern mixed case words with an uppercase  beginning given" do
    expect(extract_uppercase("HeLLO WoRLD")).to eq []
  end

  it "ignores and strips punctuations" do
    expect(extract_uppercase("HELLO! WORLD!")).to eq ["HELLO", "WORLD"]
  end
end
