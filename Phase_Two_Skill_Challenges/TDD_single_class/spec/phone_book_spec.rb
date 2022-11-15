require "phone_book"

RSpec.describe PhoneBook do
  context "with no entries" do
    it "has an empty list" do
      phone_book = PhoneBook.new
      expect(phone_book.list).to eq []
    end
  end

  context "given an entry with one set of phone number only" do
    it "stores the number" do
      phone_book = PhoneBook.new
      phone_book.extract_numbers("07800000000")
      expect(phone_book.list).to eq ["07800000000"]
    end
  end

  context "given an entry with a number in it" do
    it "stores the number" do
      phone_book = PhoneBook.new
      phone_book.extract_numbers("The number 07800000000 I called the other day")
      expect(phone_book.list).to eq ["07800000000"]
    end
  end

  context "given an entry with 2 numbers in it" do
    it "stores both numbers" do
      phone_book = PhoneBook.new
      phone_book.extract_numbers("My favourites: 07800000000, 07800000001")
      expect(phone_book.list).to eq ["07800000000", "07800000001"]
    end
  end

  context "given an entry with no numbers in it" do
    it "stores both numbers" do
      phone_book = PhoneBook.new
      phone_book.extract_numbers("My favourites.")
      expect(phone_book.list).to eq []
    end
  end

  context "given 2 entries with numbers in it" do
    it "stores both numbers" do
      phone_book = PhoneBook.new
      phone_book.extract_numbers("My friend Sarah is 07800000000")
      phone_book.extract_numbers("My friend George is 07800000001")
      expect(phone_book.list).to eq ["07800000000", "07800000001"]
    end
  end

  context "given an entry with a number with too few digits" do
    it "does not store it" do
      phone_book = PhoneBook.new
      phone_book.extract_numbers("My friend George is 0780000001")
      expect(phone_book.list).to eq []
    end
  end
end
