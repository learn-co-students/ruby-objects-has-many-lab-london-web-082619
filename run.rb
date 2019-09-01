require_relative "./lib/artist"
require_relative "./lib/song"

require 'pry'

song1 = Song.new("Sakura") 
song2 = Song.new("KaeruNoUta")
song3 = Song.new("Kagome")

artist1 = Artist.new("Takeshi")
artist2 = Artist.new("Aki")


binding.pry
"start"