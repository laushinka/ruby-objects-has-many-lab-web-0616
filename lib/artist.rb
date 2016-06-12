class Artist
  attr_accessor :name, :artist, :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    # @@song_count += 1
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end
#
# adele = Artist.new("Adele")
# song = Song.new("Rolling in the Deep")
# song.artist = "Adele"
# puts adele.songs
