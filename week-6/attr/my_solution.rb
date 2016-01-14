#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	attr_reader :name

	def initialize
		@name = "Michael Pintar"
	end
end


class Greetings

	def initialize
		@greeting = NameData.new
	end

	def hello
		puts "Hello #{@greeting.name}! How wonderful to see you today."
	end

end

greet = Greetings.new
greet.hello

# Reflection
# What are these methods doing?
# The methods are modifying or returning the values of instance variables assigned to the new class instance, instance_of_profile.

# How are they modifying or returning the value of instance variables?
# When a new instance of the Profile class is created, it initializes with the three instance variables with values. The new methods called
# on the instance can modify the variables because they exist within every method of the class. The input is simply set to something new
# and the variable is modified within the method.

# What changed between the last release and this release?
# The what_is_age method has been eliminated and replaced with an attr_reader.

# What was replaced?
# The what_is_age method has been replaced.

# Is this code simpler than the last?
# It is simpler. A whole method was eliminated.

# What changed between the last release and this release?
# The "change_my_age" method has been replaced with an attr_writer.

# What was replaced?
# See above.

# Is this code simpler than the last?
# It once again simpler, as it eliminates a method, and total two lines of code.

# What is a reader method?
# A reader method is a method which will return the data stored in the variable you attribute it to.

# What is a writer method?
# A writer method is a method which will modify the data stored in the variable you attribute it to.

# What do the attr methods do for you?
# They eliminate the need to define methods that either return or modify a particular variable within a class.

# Should you always use an accessor to cover your bases? Why or why not?
# Sometimes you'll want to make a variable readable but not modifiable, and in that case you'll want to just use a reader
# rather than an accessor.

# What is confusing to you about these methods?
# I am currently unconfused, although it is yet to be seen if that means I completely understand them or I completely misunderstand them.