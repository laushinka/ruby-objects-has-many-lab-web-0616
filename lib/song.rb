class Song
  attr_accessor :song, :artist, :name

  def initialize(name)
    @song = song
    @name = name
  end

  def artist_name
    if self.artist != nil
      self.artist.name
    end
  end

end
