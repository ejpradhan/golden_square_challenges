require "greet"

RSpec.describe "greet method" do
  it "greet a given user" do
    result = greet("Bob")
    expect(result).to eq "Hello, Bob!"
  end
end
