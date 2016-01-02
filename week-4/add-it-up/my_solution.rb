# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Ian Kinner.

# 0. total Pseudocode
# make sure all pseudocode is commented out!



# Input: Array
# Output: Integer
# Steps to solve the problem.

=begin
Create a sum variable.
Iterate through each object in the array using the .each method and add it to the sum.
Return the sum.
=end

# 1. total initial solution
def total(array)
	sum = 0
	array.each do |x|
		sum += x
	end
	return sum
end


# 3. total refactored solution

#Same Solution.


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of Strings
# Output: One string
# Steps to solve the problem.
=begin
Set a string variable equal to the first item in the array, capitalized.
Iterate through each string in the array and add it to the string variable prefixed with a space.
Add a period.
Return string.
=end

# 5. sentence_maker initial solution
=begin
def sentence_maker(stringarray)
	string=stringarray[0].capitalize
	counter=1
	while counter < stringarray.length
		string = string + (" #{stringarray[counter]}")
		counter+=1
	end
	string+="."
	return string
end
=end
# 6. sentence_maker refactored solution

def sentence_maker(stringarray)
string=stringarray[0].capitalize
puts stringarray.length
   newarray=stringarray.drop(1)
   	newarray.each do |x|
string+= " " + x.to_s
end
string+="."
return string
end
