require 'pry'

class Song

    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
    @name = name
    @@all << self

    end

    def self.all
        @@all
    end

    def artist_name
        self.artist ? self.artist.name : nil
    end

end

class  Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{|s| s.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
      end

    def self.song_count
        Song.all.length
    end
    
end

song1 = Song.new("Takeshi") 
song2 = Song.new("Yoshio")
song3 = Song.new("Aki")
binding.pry
"test"