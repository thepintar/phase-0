# Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: ].



# First Person's solution I liked
#    What I learned from this solution
# This refactored code takes advantage of an UNTIL loop to eliminate the much longer code required for other loop types.
# I'm going to use this same solution in my refactoring.
# Copy solution here:
# def pad(array, min_size, value = nil) #non-destructive
#   new_array = array.clone
#   if new_array.length < min_size
#     new_array.push(value) until new_array.length == min_size 
#   end

#   return new_array
# end

# def pad!(array, min_size, value = nil) #destructive
#   if array.length < min_size 
#     array.push(value) until array.length == min_size
#   end
#   return array
# end


# My original solution:
# def pad!(array, min_size, value = nil) #destructive
#  if array.length >= min_size
#     return array
#   else
#     pad_size = min_size - array.length
#     for i in 1..pad_size
#     array.push(value)
#     end
#     return array
#   end
# end

# def pad(array, min_size, value = nil) 
# 	new_array = array.clone
#   if array.length >= min_size
#     return new_array
#   else 
#     pad_size = min_size - array.length
#     for i in 1..pad_size
#     new_array.push(value)
#     end
#     return new_array
#   end
# end


# My refactored solution:

def pad!(array, min_size, value = nil) #destructive
	if array.length < min_size #by starting with the condition that actually makes a change, I eliminate the else portion entirely.
    	array.push(value) until array.length == min_size #this line takes the place of all the meat from before.
    end
    return array
end

def pad(array, min_size, value = nil) 
	new_array = array.clone
  if array.length < min_size
    new_array.push(value) until new_array.length == min_size
    return new_array
  end
  return new_array
end


# 5. Reflection
# Looking back on my original solution now it seems so obvious that there was a better way to refactor. Its great to see how far I've come in the interem.
# I still don't know if I'd have been able to refactor as well as the other pair challenge I looked at, though. I wish I'd given it a shot
# before seeing what they did!
