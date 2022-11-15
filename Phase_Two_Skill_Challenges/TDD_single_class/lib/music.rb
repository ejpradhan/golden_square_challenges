class MusicTracker
  def initialize
    @list = []
  end

  def add(track)
    @list << track if !@list.include? track
  end

  def list
    fail "The tracklist is empty" if @list.empty?
    return @list
  end
end
