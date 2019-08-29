class Song
    # attr_reader 
    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        @name = name
        @artist = artist
        @@all << self
    end

    # def artist
    #     Artist.all.select{|artist| artist.songs == self}
    # end
    def self.all
        @@all
    end
    
    def artist_name
        self.artist ? self.artist.name : nil
    end
end