# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: An integer
# Output: symbols :high :low :correct or true/false
# Steps:
=begin
Create the class Guessing Game
define the initialize method with an input answer
check to see if answer is an integer- if not raise an argument error prompting an integer input
set a class variable equal to answer
and set class variable @solved = false
define a method called guess wherein we input a variable and compare it against @answer
if its high return :high
if low return :low
if correct return :correct and set @solved=true to the method solved
def the method solved to return @solved

=end

# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @solved = false
#     if @answer.is_a?(Integer)==false
#     	raise ArgumentError.new("You must input an integer answer!")
#   	end
#   end
#   def guess(guess)
#   	if guess > @answer
#   		 @solved = false
#   		return :high
#   	elsif guess < @answer
#   		 @solved = false
#   		return :low
#   	elsif guess == @answer
#   		@solved = true
#   		return :correct
#   	end
#   end
#   def solved?
#   	@solved
#   end
# end

# game = GuessingGame.new rand(100)
# last_guess  = nil
# last_result = nil

# until game.solved?
#   unless last_guess.nil?
#     puts "Oops!  Your last guess (#{last_guess}) was #{last_result}."
#     puts ""
#   end

#   print "Enter your guess: "
#   last_guess  = gets.chomp.to_i
#   last_result = game.guess(last_guess)
# end

# puts "#{last_guess} was correct!"


# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
    if @answer.is_a?(Integer)==false
    	raise ArgumentError.new("You must input an integer answer!")
  	end
  end
  def guess(guess)
  	@solved = guess == @answer ? true : false
    guess == @answer ? :correct : (guess > @answer ? :high : :low)
  end
  def solved?
  	@solved
  end
end


# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# Instance variables represent the characteristics of a real-world object by existing until outside conditions change.
# In this case, when you pick a number in your head, you remember that number until the game is over.
# If you played the guessing game using a 12 sided die, you could cover up the die but the number on upward face would remain the same
# unless you rolled it again. Methods are similar in that they represent a law or rule for how that object will be interacted with.
# A guess will always need to be compared to the correct answer. That will always be the rule. A solution will always be either true or false.

# When should you use instance variables? What do they do for you?
# You should use instance variables when you need to store some information that affects many or all rules of the class.
# In this case, everything depended on what the correct answer was. The whole class was dependant on sharing that variable between methods.


# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow control functions to only execute code if necessary. I didn't initially struggle with flow control in this challenge.
# What did challenge me was switching over to the ternary operator and figuring out how to translate my original if/then statement
# correctly. I initially tried to put all of my code into one statement but found out splitting it into two worked much better.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# I think this code requires the return of symbols for all of the characteristics and benefits of symbols. Symbols are immutable, meaning
# that once they're created they can't be arbitrarily changed. "Correct" could be changed to "Correctt" but :correct will always be :correct.
# Symbols are also faster to process for Ruby. Ruby stores every variable name as a symbol anyhow, so its like cutting out the middle man.
# Also ruby assigns each instance of a string with a new object id, whereas a symbol will always be the same object. In this way, symbols 
# live in a space between integers and strings.
