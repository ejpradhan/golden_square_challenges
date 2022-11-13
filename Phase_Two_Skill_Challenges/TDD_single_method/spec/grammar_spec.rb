require "grammar"

RSpec.describe "grammar_check method" do
  context "when empty string passed" do
    it "fails with an invalid sentence message" do
      expect { grammar_check("") }.to raise_error "Invalid sentence."
    end
  end
  context "given a sentence with correct upcase start and full stop punctuation" do
    it "returns true" do
      expect(grammar_check("Hello, it's me.")).to eq true
    end
  end

  context "given a sentence with no upcase start but correct punctuation" do
    it "returns false" do
      expect(grammar_check("hello, it's me.")).to eq false
    end
  end

  context "given a sentence with correct upcase start but no punctuation" do
    it "returns false" do
      expect(grammar_check("Hello, it's me")).to eq false
    end
  end

  context "given a sentence with no upcase and no punctuation" do
    it "returns false" do
      expect(grammar_check("hello, it's me")).to eq false
    end
  end

  context "given a sentence with all upcase but no punctuation" do
    it "returns false" do
      expect(grammar_check("HELLO, it's me.")).to eq true
    end
  end

  context "given a sentence with an upcase word and exclamation mark ending" do
    it "returns true" do
      expect(grammar_check("Hello, it's me!")).to eq true
    end
  end

  context "given a sentence with an upcase word and question mark ending" do
    it "returns true" do
      expect(grammar_check("Hello, it's me?")).to eq true
    end
  end

  context "given a sentence with an upcase word and comma ending" do
    it "returns false" do
      expect(grammar_check("Hello, it's me,")).to eq false
    end
  end
end
