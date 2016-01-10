# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? An integer.
# What is the output? A string where commas have been placed in the correct places for usual number notation.
# What are the steps needed to solve the problem?
=begin
First, convert the integer into a string.
Count the length of the string.
If the length is less than or equal to 3, return the string left alone.
Otherwise, take the length mod 3. The result of this is how many integers need to be popped off the front, followed by a comma.
Convert the string into an array.
Push the objects in the array three at a time to a new array, adding a comma
Combine the objects in the array into one string and return that.

=end


# 1. Initial Solution
# def separate_comma(input_integer)
# integer_length = input_integer.to_s.length
# final_int=[]
# if integer_length <= 3
# 	return input_integer.to_s
# else
# 	take_number=integer_length%3
# 	if take_number==0
# 		int_counter=0
# 		working_int=input_integer.to_s.split("")
# 		working_int.each do |x|
# 			if int_counter==3
# 				final_int << [","] + [x]
# 				int_counter=1
# 			else
# 				final_int << [x] 
# 				int_counter+=1
# 			end
# 		end
# 		puts final_int.join
# 	else
# 		int_array = input_integer.to_s.split("")
# 		final_int=int_array.take(take_number)+[","]
# 		working_int = int_array.drop(take_number)
# 		int_counter=0
# 		working_int.each do |x|
# 			if int_counter==3
# 				final_int << [","] + [x]
# 				int_counter=1
# 			else
# 				final_int << [x] 
# 				int_counter+=1
# 			end
# 		end
# 	end
# 	return final_int.join

# end
# end

# 2. Refactored Solution

def separate_comma(input_integer)
integer_length = input_integer.to_s.length
final_int=[]
if integer_length <= 3
	return input_integer.to_s

else
	take_number=integer_length%3
	if take_number==0
		working_int=input_integer.to_s.split("")
		working_int.each do |x|	
			if working_int.count > 3
				final_int << working_int.slice!(0..2) + [',']
			else
				final_int << working_int.slice!(0..2)
			end
		end
		return final_int.join	
	else
		int_array = input_integer.to_s.split("")
		final_int=int_array.take(take_number)+[","]
		working_int = int_array.drop(take_number)
		working_int.each do |x|
			if working_int.count > 3
				final_int << working_int.slice!(0..2) + [',']
			else
				final_int << working_int.slice!(0..2)
			end
		end
	
	end
	return final_int.join
end
end


# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
My process was to think about how to split up the input into chunks to put commas in. Initially I thought about
reversing the array so I wouldn't end up with any errant comma at the end of a number, but eventually
just relegated that task to a simple if/then argument. Either way I knew I would use the modulus function to figure out
how many integers I needed to remove from the front of the number to leave chunks of three leftover.

Was your pseudocode effective in helping you build a successful initial solution?
It was.

What new Ruby method(s) did you use when refactoring your solution? 
Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). 
Did it/they significantly change the way your code works? If so, how?
I used .slice, .take and .drop for the first time. The Ruby docs are initially a little bit off-putting because
there is so much information presented. However, once you understand how it's laid out it becomes a lot easier.
I really like how they show direct examples of how each method works.
The new methods changed the way my code worked by eliminating the counter that helped me grab three numbers at a time
and replacing it with the slice method grabbing them.

How did you initially iterate through the data structure?
Initially (after grabbing the first one or two numbers from the front) I counted through number by number until, adding them to the final
array until the counter read three. At the point it would add a comma and reset the counter.

Do you feel your refactored solution is more readable than your initial solution? Why?
I think it is more readable. First of all, its shorter, and there are fewer variables. Its just easier on the eyes.


=end