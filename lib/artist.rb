class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
      @name = name
      @songs = []
      @@all << name
  end

  def add_song(song)
      @songs << song
      song.artist = self
  end

  def songs
       @songs
  end

  def add_song_by_name(name)
      song = Song.new(name)
      song.artist = self
      @songs << song
  end

  def self.song_count
     Song.all.length
  end

end 