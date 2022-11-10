require "check_codeword"

RSpec.describe "check_codeword method" do
  it "returns a wrong message if given the wrong password" do
    result = check_codeword("blue")
    expect(result).to eq "WRONG!"
  end

  it "returns a correct message if right codeword is given" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "returns close message when first and last characters are close to the codeword" do
    result = check_codeword("house")
    expect(result).to eq "Close, but nope."
  end

  it "returns close message when first character is close to the codeword" do
    result = check_codeword("hello")
    expect(result).to eq "WRONG!"
  end

  it "returns close message when last character is close to the codeword" do
    result = check_codeword("mouse")
    expect(result).to eq "WRONG!"
  end
end
