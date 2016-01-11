# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1 hours on this challenge.

# 0. Pseudocode

# Input: Integer
# Output: Random number between 1 and the Integer
# Steps: 
#Create a class called Die that passes initialize an integer representing the number of sides.
# Set an instance variable equal to the number of sides.
# Define a method called sides that returns the number of sides.
# Define a method called roll that returns a random number between one and the Integer.

# 1. Initial Solution

# class Die
#   def initialize(sides)
#     @sides = sides
#     if @sides<1
#     	raise ArgumentError.new("The die must have at least one side!")
#   	end
#   end

#   def sides
#     return @sides
#   end

#   def roll
#   	diceroll=Random.new
#     return diceroll.rand(1..@sides)
#   end
# end



# 3. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    if @sides<1
    	raise ArgumentError.new("The die must have at least one side!")
  	end
  end

  def sides
    return @sides
  end

  def roll
  	diceroll=Random.new
    return diceroll.rand(1..@sides)
  end
end





# 4. Reflection
=begin

What is an ArgumentError and why would you use one?
An ArgumentError is an error that is returned when the argument/s passed to a method are inappropriate for the method.
For instance, if a method requires two arguments but you pass it three, it wouldn't know what to do and you'd get an ArgumentError.
In this case, we require a positive integer as a 0 or negative sided die makes no sense. Therefore we return the error when some
wise ass tries to pass in a nonsensical argument.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
This was my first time using the .rand method, which is really quite something. Always good to have a little bit of randomness in there.
It'll come in handy if I ever create a sprawling gambing program in Ruby. Here's hoping!

What is a Ruby class?
In Ruby, a class is, as taken directly from the recommended video, a blueprint for an object. Common classes are Strings, Arrays and Hashes.
When you create a new Array, for instance, Ruby knows what to expect from it and what methods can be used with it, as well as how they
interact.

Why would you use a Ruby class?
You would use a Ruby class if you want to use a new object type in your code, and use it several times. Rather than defining that object
and it behaviors over and over, you could just create it as a new class.


What is the difference between a local variable and an instance variable?
A local variable exists within a method and then disappears when the method ends, whereas an instance variable exists within a class and
can be accessed by every method within that class.

Where can an instance variable be used?
An instance variable can be used inside any method within a class.

=end