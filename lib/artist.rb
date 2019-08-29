
require_relative "./song"
require 'pry'

class Artist    
@@all = []   #mandatory
 attr_accessor  :name #mandatory

 def initialize(name) #mandatory
   @name = name
   @@all << self #mandatory
    end

    def songs()
        Song.all.select{|song| song.artist == self}
    end
   
    
    def add_song(song)
        song.artist = self
        #binding.pry
    end
      def add_song_by_name(name) 
        song = Song.new(name)
        song.artist = self
        #binding.pry
        end
       
        def self.song_count()
            Song.all.length
    end
end


 

