# Calculate the mode Pairing Challenge

# I worked on this challenge with Ian Wudarski.

# I spent 2 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An Array of numbers of strings.
# What is the output? An array of the most frequent values.
# What are the steps needed to solve the problem?
=begin

Iterate through the array and count the instance of each object.
-create a new Hash
-add each object in the array as a key
-add one to the value of the key if it repeats
Identify the largest value or values.
Create an array from the values of the most occurring object or objects.
Return said array.

=end


# 1. Initial Solution

def mode (array)
  newhash=Hash.new
  array.each do |x|
    newhash[x] = newhash[x].to_i + 1
  end
  modevalue = newhash.values.max
  modearray= Array.new
  newhash.each do |x, y|
    if y == modevalue
      modearray.push(x)
    end
  end
  return modearray
end

# 3. Refactored Solution
#Nothing to refactor!

# 4. Reflection
=begin

Which data structure did you and your pair decide to implement and why?
We decided to utilize a hash to count up the objects in the array, because it was easy to assign each object as a key and make the count its value.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
I'd say the ease-of-pseudocode-breakdown was about the same. The only different was that I drove this time so I was typing it out.

What issues/successes did you run into when translating your pseudocode to code?
The main issues we ran up agaist were very small things that took a bit of experimenting and searching the get right.
For instance, adding 1 to the value of newhash each time it was encountered didn't work until we added ".to_i",
which makes sense in retrospect. Before figuring that out I almost scrapped the whole idea. The second major problem
was finding out how to implement the ".max" method to both sort by the values but also return only the values. That took up
the majority of our time.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? 
Were they difficult to implement?
We only used the .each method in combination with the hash, not having found anything more suitable while attempting to refactor.
I find that I put a lot of energy into making my first solution as good as possible, and rarely find things to help in refactoring.
Perhaps its something to work on.

=end
