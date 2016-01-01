# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
	if list_of_words==[]
		return nil
	else
		short_string=list_of_words[0]
  		list_of_words.each do |x|
  			if x.length < short_string.length
  				short_string = x
			end		
		end
  		return short_string
  	end
end