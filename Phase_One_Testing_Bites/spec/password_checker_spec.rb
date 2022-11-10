require "password_checker"

RSpec.describe PasswordChecker do
  it "it returns true if the password is 8 characters or more" do
    password_checker = PasswordChecker.new
    expect(password_checker.check("fantastic")).to eq true
  end

  it "it fails when the password is shorter than 8 chars long" do
    password_checker = PasswordChecker.new
    expect { password_checker.check("hello") }.to raise_error "Invalid password, must be 8+ characters."
  end

  it "fails when the password chars 0" do
    password_checker = PasswordChecker.new
    expect { password_checker.check("") }.to raise_error "Invalid password, must be 8+ characters."
  end
end
