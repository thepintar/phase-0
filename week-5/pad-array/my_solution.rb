# Pad an Array

# I worked on this challenge with Chris Bunkers.

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


#
# 1. Initial Solution
=begin
def pad!(array, min_size, value = nil) #destructive
 if array.length >= min_size
    return array
  else 
    pad_size = min_size - array.length
    counter = 0
    while counter < pad_size
   		array << value
   		counter+=1
    end
    return array
  end
end

def pad(array, min_size, value = nil) 
	new_array = [] 
	array.each { |x| new_array << x } 
  if array.length >= min_size
    return new_array
  else 
    pad_size = min_size - array.length
    pad_array = Array.new(pad_size,value)
    new_array = array + pad_array
    return new_array
  end
end
=end

# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
 if array.length >= min_size
    return array
  else
    pad_size = min_size - array.length
    for i in 1..pad_size
    array.push(value)
    end
    return array
  end
end

def pad(array, min_size, value = nil) 
	new_array = array.clone
  if array.length >= min_size
    return new_array
  else 
    pad_size = min_size - array.length
    for i in 1..pad_size
    new_array.push(value)
    end
    return new_array
  end
end
# 4. Reflection
=begin 
Were you successful in breaking the problem down into small steps?
I believe we were successful into breaking the problem down into small steps. We could've possibly gone more granular but we were on the same page.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
It was easy to translate it into code. Our issue came when our new variable had the same object id as the array variable, causing an error in rspec.
So the challenge became how to copy one variable into another identically while giving it a new object id. I guess Ruby uses the same
object ID for a new object unless you call some sort of method on it?

Was your initial solution successful at passing the tests? If so, why do you think that is? 
If not, what were the errors you encountered and what did you do to resolve them?
I guess I answered this question prematurely. The challenge was returning an identical object with a different it.

When you refactored, did you find any existing methods in Ruby to clean up your code?
We found the .clone method and refactored a while loop with a counter into a for loop.

How readable is your solution? Did you and your pair choose descriptive variable names?
I think our solution is highly readable. We were very aware of choosing good, descriptive names for each variable.

What is the difference between destructive and non-destructive methods in your own words?
A non-destructive method may do some calculations or adjustments based on an inputted variable, but the variable itself will remain
	unchanged. A destructive method changes the variable while calculating and adjusting.

=end