# require 'pry'

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

song_a = Song.new("Takeshi") 

# binding.pry
# "test"