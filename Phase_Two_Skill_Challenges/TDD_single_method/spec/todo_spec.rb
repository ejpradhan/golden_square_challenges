require "todo"

RSpec.describe "todo method" do
  context "when not a string datatype entered -but a set of integers" do
    it "fails with an error message" do
      expect { todo(123) }.to raise_error "This is not a string, cannot check!"
    end
  end

  context "when an empty string passed" do
    it "fails with an error message" do
      expect { todo("") }.to raise_error "No text entered!"
    end
  end

  context "when a string passed with the correct #TODO in it" do
    it "evaluates true" do
      expect(todo("cook lunch #TODO")).to eq true
    end
  end

  context "when a string passed with no #TODO in it" do
    it "evaluates false" do
      expect(todo("cook lunch")).to eq false
    end
  end

  context "when a string passed with only a  # in it" do
    it "evaluates false" do
      expect(todo("cook lunch #")).to eq false
    end
  end

  context "when a string passed with only a lowercase #todo in it" do
    it "evaluates false" do
      expect(todo("#todo cook lunch")).to eq false
    end
  end
end
