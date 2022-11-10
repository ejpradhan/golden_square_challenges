require "gratitudes"

RSpec.describe Gratitudes do
  it "returns an empty list of gratitudes" do
    gratitudes = Gratitudes.new
    expect(gratitudes.format).to eq "Be grateful for: "
  end

  it "returns one gratitude" do
    gratitudes = Gratitudes.new
    gratitudes.add("health")
    expect(gratitudes.format).to eq "Be grateful for: health"
  end

  it "returns multiple gratitudes" do
    gratitudes = Gratitudes.new
    gratitudes.add("health")
    gratitudes.add("joy")
    gratitudes.add("sunshine")
    expect(gratitudes.format).to eq "Be grateful for: health, joy, sunshine"
  end
end
