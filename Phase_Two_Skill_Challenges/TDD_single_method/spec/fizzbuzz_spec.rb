require "fizzbuzz"

RSpec.describe "fizzbuzz method" do
  it "for an ordinary number it returns the number" do
    # when I call fizzbuzz(1), I should get 1
    result = fizzbuzz(1)
    expect(result).to eq 1
  end

  it "returns the word fizz when the number is divisible by 3" do
    result = fizzbuzz(9)
    expect(result).to eq "Fizz"
  end

  it "returns the word buzz when the number is divisible by 5" do
    result = fizzbuzz(10)
    expect(result).to eq "Buzz"
  end

  it "returns the word fizzbuzz when the number is divisible by 15" do
    result = fizzbuzz(45)
    expect(result).to eq "FizzBuzz"
  end
end
