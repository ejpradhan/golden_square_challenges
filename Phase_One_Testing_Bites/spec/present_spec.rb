require "present"

RSpec.describe Present do
  it "wraps and unwraps" do
    present = Present.new
    present.wrap(2)
    expect(present.unwrap).to eq 2
  end

  it "fails when present is already wrapped" do
    present = Present.new
    present.wrap(2)
    expect { present.wrap(3) }.to raise_error "A contents has already been wrapped."
  end

  it "fails when want to unwrap without wrapping" do
    present = Present.new

    expect { present.unwrap }.to raise_error "No contents have been wrapped."
  end
end
