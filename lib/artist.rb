class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    self.songs << song
    @@song_count += 1
  end

  @@song_count = 0

  def self.song_count
    @@song_count
  end

end

# learn ./spec/artist_spec.rb
