# require 'pry'

class  Artist

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select{|s| s.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def self.song_count
        Song.all.length
    end
    
end

# binding.pry
"test"