# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: A random string from the array
# Steps: 
=begin
Create a new class called "Die".
Define the initialize method to input an array of strings.
If the user tries to create a die with no sides it raises an argument error which alerts them to that fact.
Count the number of items in the array; this becomes the number of sides in the sides method.
In the roll method, return an array item at a randomized index between 0 and the number of sides minus 1.
=end

# Initial Solution

# class Die
#   def initialize(labels)
#   	@labels=labels
#   	@sides=@labels.count
#   	if @sides<1
#     	raise ArgumentError.new("The die must have at least one side!")
#   	end
#   end

#   def sides
#   	return @sides
#   end

#   def roll
#   	diceroll=Random.new
#     return @labels[(diceroll.rand(1..@sides))-1]
#   end
# end



# Refactored Solution


class Die

  def initialize(labels)
  	@labels=labels
  	if @labels.count<1
    	raise ArgumentError.new("The die must have at least one side!")
  	end
  end

  def sides
  	return @labels.count
  end

  def roll
    return @labels.sample
  end

end


# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? 
# Did you need to change much logic to get this to work?
# The main difference was in returning an item from the input array rather than returning a number based on the integer input.
# I didn't have to change the logic much at all. In fact it even looks simpler, which tells me I maybe could have simplified the previous die class better.

# What does this exercise teach you about making code that is easily changeable or modifiable? 
# It taught me that writing code as concisely as possible really helps out in the future.
# If you have well-refactored code, it can be pretty easily modified to similar tasks in the future.

# What new methods did you learn when working on this challenge, if any?
# I learned the .sample method, which returns a random object within a given array.

# What concepts about classes were you able to solidify in this challenge?
# There wasn't anything in particular that was solidifed in this lesson versus the previous one,
# but it was good to return to classes again to remind me how they worked.
