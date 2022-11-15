require "grammar_stats"

RSpec.describe GrammarStats do
  describe "#check" do
    context "when given an empty string" do
      it "fails" do
        grammar_stats = GrammarStats.new
        expect { grammar_stats.check("") }.to raise_error "Not a sentence entered!"
      end
    end

    context "when given a string with an uppercase start and punctuation end" do
      it "returns true" do
        grammar_stats = GrammarStats.new
        expect(grammar_stats.check("Welcome!")).to eq true
      end
    end

    context "when given a string with a lowercase start and punctuation end" do
      it "returns false" do
        grammar_stats = GrammarStats.new
        expect(grammar_stats.check("welcome.")).to eq false
      end
    end

    context "when given a string with an uppercase start and no punctuation end" do
      it "returns false" do
        grammar_stats = GrammarStats.new
        expect(grammar_stats.check("Welcome")).to eq false
      end
    end

    context "when given a string with a lowercase start and no punctuation end" do
      it "returns false" do
        grammar_stats = GrammarStats.new
        expect(grammar_stats.check("welcome")).to eq false
      end
    end
  end

  describe "#percentage_good" do
    it "returns the percentage of passing texts" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Welcome!")
      grammar_stats.check("welcome")
      grammar_stats.check("welcome.")
      grammar_stats.check("Welcome")
      expect(grammar_stats.percentage_good).to eq 25
    end

    it "returns 0 percent when there are no passing texts" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("welcome.")
      grammar_stats.check("Welcome")
      grammar_stats.check("welcome")
      expect(grammar_stats.percentage_good).to eq 0
    end
  end
end
