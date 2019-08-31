

class Artist
  attr_accessor :name, :songs

@@song_count = 0

def initialize(name) #allows access and stores artist name
    @name = name
    @songs = []
end

def add_song(song)
  self.songs << song #creates new instances of artist & adds it to the artist array of songs
  song.artist = self
  @@song_count += 1
end

def add_song_by_name(name)
  song = Song.new(name) #takes in an arguement for a song and then associates it with the song and artist
  self.songs << song
  song.artist = self
  @@song_count += 1
end

def songs
  @songs
end

def self.song_count
  @@song_count
end

end
  35  lib/author.rb 
@@ -0,0 +1,35 @@
require 'pry'

class Author

attr_accessor :name

@@all = [] #=> allows for storing information in empty array

def initialize(name=nil) #=> initializes name and creates instance of variable
  @name = name
  @@all << self
end

def self.all #=>creates instance of variable
@@all
end

def add_post(post)
  post.author = self
end

def add_post_by_title(title)
  post = Post.new(title)
  post.author = self
end

def posts
  Post.all.select{|post| post.author == self}
end

def self.post_count
  Post.all.count
end

end
  20  lib/post.rb 
@@ -0,0 +1,20 @@
class Post

attr_accessor :title, :author

@@all = []

def initialize(title)
  @title = title
  @@all << self
end

def self.all
  @@all
end

def author_name
  author.name if author
end

end
  22  lib/song.rb 
@@ -0,0 +1,22 @@
require 'pry'

class Song
  attr_accessor :name, :artist

 @@all = []

 def initialize(name, artist=nil)
   @name = name #=> song has a name
   @artist = artist #=> belongs to an artist
   @@all << self
 end

def self.all #=> class method that returns array of all song instances that have been created
  @@all #=> class variable set to an array
end


def artist_name
  artist.name if artist #=> knows the name of artist and returns nil if song doesnt have an artist
end
end