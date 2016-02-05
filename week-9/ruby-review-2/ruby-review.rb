# Create a Playlist from Driver Code

# I worked on this challenge by myself.
# I spent 2 hours on this challenge.


# Pseudocode
=begin
ERROR LOG
error: uninitialized constant Song (NameError)
	Need to create a class "Song"
error: wrong number of args
	Need to initialize class to input two arguments, name and artist
error: unititialized constant Playlist (NameError)
	Need to create a class "Playlist"
error: wrong number of arguments (3 for 0)
	Need to initialize class to input three arguments, song_01, song_01, song_03
error: undefined method `add' for Playlist
	Need to define method "add" for the playlist class
error: wrong num of args, method add, 2 for 0
	Need to have add method input two args
error: undefined method `num_of_tracks' for #<Playlist...
	Need to have method "num_of_tracks" for playlist class
error: undefined method `play' for #<Song
	Need to have method "play" for Song class.
error: undefined method `remove' for #<Playlis
	Need to add method "remove" to Playlist class
error: in `remove': wrong number of arguments (1 for 0)
	Need to set the "remove" method to accept one input
error: undefined method `includes?' for #<Playlist
	Need to define method "includes?" for Playlist class
error: `includes?': wrong number of arguments (1 for 0) 
	Need to pass in one argument to "includes?" method
error: undefined method `play_all' for #<Playlist
	Need to define method "play_all" for Playlist class
ERROR FIXES COMPLETE

For Song Class:
	input: name and artist string
	output: some play output
	Steps:
		1. play should PUTS a string of text confirming that the song is being played, wait for a few seconds
			and then PUTS that the song is done playing.
For Playlist Class:


=end


# Initial Solution

class Song
	attr_reader :name
	attr_reader :artist
	def initialize(name, artist)
		@name = name
		@artist = artist
	end

	def play
		if @artist == "Linkin Park"
			puts "The early 2000s called, they want their musical taste back!"
		end
		puts "Now playing \"#{@name}\" by #{@artist}. Enjoy."
		10.times do |x|
			sleep(0.5)
			print "."
		end
		puts "\n"
	end
end

class Playlist
	def initialize(song_01, song_02, song_03)
		@playlist = [song_01, song_02, song_03]
	end

	def add(*args)
		args.each do |song|
			@playlist.push(song)
		end
	end

	def num_of_tracks
		return @playlist.count
	end

	def remove(song)
		@playlist.each do |name|
			if name == song
				@playlist.delete(song)
				puts "\"#{song.name}\" by #{song.artist} has been removed from the playlist."
				return
			end
		end
		puts "No such song exists on the playlist."
	end

	def includes?(song)
		@playlist.each do |name|
			if name == song
				return true
			end
		end
		return false
	end

	def play_all
		@playlist.each do |song|
			song.play
			# puts "Now playing \"#{song.name}\" by #{song.artist}. Enjoy."
			# 10.times do |x|
			# 	sleep(0.5)
			# 	print "."
			# end
			# puts "\n"	
		end
	end

	def display
		puts "\nTracklist:"
		@playlist.each_with_index do |song, index|
			puts "#{index+1}. \"#{song.name}\" by #{song.artist}"
		end
	end
end


# Refactored Solution

#Nothin' doin! Already wicked simple, kid.


# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection
What concepts did you review in this challenge?
First of all, I want to go ahead and say that this challenge was a ton of fun, and I believe it should be mandatory for everyone!
It was great because I got to review error identification, Ruby Classes, Ruby Methods (and to learn about *args to use when a method needs
		to be able to input an open number of arguments) and object-oriented coding in general. I'd say that in particular,
object-oriented coding was really solidified here. Understanding that ruby can store a bunch of class instances inside of an array
and then call class methods on each one was a big step forward for me. I guess I would never have assumed that each instance could
retain its important parts inside of that array, but then again thats the whole purpose behind having classes and instances, isn't it!

What is still confusing to you about Ruby?
I wouldn't say anything is confusing to me at this point apart from how its going to be used and implemented on the web. We've taken
a look at how to integrate javascript with the DOM, but not Ruby, so I look forward to that.

What are you going to study to get more prepared for Phase 1?
I'm not going to study up on Ruby, as I feel confident with using Ruby. I plan on playing around more with javascript and the DOM.
