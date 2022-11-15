require "diary_entry"

RSpec.describe DiaryEntry do
  it "constructs" do
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry.title).to eq "my_title"
    expect(diary_entry.contents).to eq "my_contents"
  end

  describe "#count_words" do
    it "returns the number of words in the contents" do
      diary_entry = DiaryEntry.new("my_title", "some contents here")
      expect(diary_entry.count_words).to eq 3
    end

    it "returns 0 when the contents is empty" do
      diary_entry = DiaryEntry.new("my_title", "")
      expect(diary_entry.count_words).to eq 0
    end
  end

  describe "#reading_time" do
    context "given a wpm number of 200" do
      it "returns the ceiling of the number of minutes it takes to read the content" do
        diary_entry = DiaryEntry.new("my_title", ("one " * 550))
        expect(diary_entry.reading_time(200)).to eq 3
      end
    end

    context "given a wpm of 0" do
      it "fails" do
        diary_entry = DiaryEntry.new("my_title", "here some words")
        expect { diary_entry.reading_time(0) }.to raise_error "Reading speed must be above 0"
      end
    end
  end
end

describe "#reading_chunk" do
  context "with a content readable within the given minutes" do #enough time to read through
    it "returns the full content" do
      diary_entry = DiaryEntry.new("my_title", "here some words")
      chunk = diary_entry.reading_chunk(200, 1)
      expect(chunk).to eq "here some words"
    end
  end

  context "given a wpm of 0" do
    it "fails" do
      diary_entry = DiaryEntry.new("my_title", "here some words")
      expect { diary_entry.reading_chunk(0, 5) }.to raise_error "Reading speed must be above 0"
    end
  end

  context "with a content unreadable within the time" do # not enough time to read through
    it "returns a readable chunk" do
      diary_entry = DiaryEntry.new("my_title", "here some words")
      chunk = diary_entry.reading_chunk(2, 1) # wpm reduced to 2 words per minute
      expect(chunk).to eq "here some"
    end

    it "returns the next chunk, next time we are asked" do
      diary_entry = DiaryEntry.new("my_title", "here some words")
      diary_entry.reading_chunk(2, 1)
      chunk = diary_entry.reading_chunk(2, 1)
      expect(chunk).to eq "words"
    end

    it "restarts after reading the whole contents" do
      diary_entry = DiaryEntry.new("my_title", "here some words")
      diary_entry.reading_chunk(2, 1)
      diary_entry.reading_chunk(2, 1)
      chunk = diary_entry.reading_chunk(2, 1)
      expect(chunk).to eq "here some"
    end

    it "restarts if it finishes exactly on the end" do
      diary_entry = DiaryEntry.new("my_title", "here some words")
      diary_entry.reading_chunk(2, 1)
      diary_entry.reading_chunk(1, 1)
      chunk = diary_entry.reading_chunk(2, 1)
      expect(chunk).to eq "here some"
    end
  end
end
