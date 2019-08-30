class Song 
    attr_accessor :artist
    attr_reader :name
#your accessor has access to artist since we call on the artist class within methods inside this 
#class, Song class.

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all 
        @@all
    end


    def artist_name
        artist.name if artist
    end
    #this instance method returns the .name of the artist that the song has been associated with 
    #(the method to create new songs is inside the Artist class), but only if there is an associated 
    #artist. Returns nil if not. 

end
