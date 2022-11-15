require "music"

RSpec.describe MusicTracker do
  context "Adding nothing to the list" do
    it "fails with an error message" do
      music_tracker = MusicTracker.new
      expect { music_tracker.list }.to raise_error "The tracklist is empty"
    end
  end

  context "Adding one song" do
    it "stores it in the list" do
      music_tracker = MusicTracker.new
      music_tracker.add("Happy")
      expect(music_tracker.list).to eq ["Happy"]
    end
  end

  context "Adding two songs" do
    it "stores  both of them in the list" do
      music_tracker = MusicTracker.new
      music_tracker.add("Happy")
      music_tracker.add("Die another day")
      expect(music_tracker.list).to eq ["Happy", "Die another day"]
    end
  end

  context "Adding two songs" do
    it "stores  both of them in the list" do
      music_tracker = MusicTracker.new
      music_tracker.add("Happy")
      music_tracker.add("Happy")
      expect(music_tracker.list).to eq ["Happy"]
    end
  end
end
