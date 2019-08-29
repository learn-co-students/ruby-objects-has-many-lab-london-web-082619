require 'pry'
class Artist
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end
    def self.all
        @@all
    end

    def add_song(song)  # givin song instance as an argument: add_song(Song.new("hello"))
        # assign song to instane artist
        song.artist = self
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        new_song.artist = self
    end

    def self.song_count
        # binding.pry
        Song.all.count
    end
end