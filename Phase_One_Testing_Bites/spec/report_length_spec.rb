require "report_length"
RSpec.describe "report_length method" do
  it "returns the correct length of the given word" do
    expect(report_length("house")).to eq "This string was 5 characters long."
  end
end
