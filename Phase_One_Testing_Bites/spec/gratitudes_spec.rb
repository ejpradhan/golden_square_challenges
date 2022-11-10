require "gratitudes"

RSpec.describe Gratitudes do
  it "returns an empty list of gratitudes" do
    gratitudes = Gratitudes.new
    expect(gratitudes.format).to eq "Be grateful for: "
  end
end
