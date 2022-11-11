require "calculate_reading_time"

RSpec.describe "calculate_reading_time method" do
  context "given an empty string" do
    it "return zero -minutes-" do
      expect(calculate_reading_time("")).to eq 0
    end
  end

  context "given a text of under 200 words" do
    it "returns one" do
      expect(calculate_reading_time("one")).to eq 1
    end
  end

  context "given a text of 200 words" do
    it "returns one" do
      expect(calculate_reading_time("one " * 200)).to eq 1     # ("one " * 200) represents 200 words
    end
  end

  context "given a text of 300 words" do
    it "returns two" do
      expect(calculate_reading_time("one " * 300)).to eq 2
    end
  end

  context "given a text of 400 words" do
    it "returns two" do
      expect(calculate_reading_time("one " * 400)).to eq 2
    end
  end

  context "given a text of 5000 words" do
    it "returns 25" do
      expect(calculate_reading_time("one " * 5000)).to eq 25
    end
  end
end
