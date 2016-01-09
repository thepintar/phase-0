# Research Methods

# I spent 1 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(array, letter)
  array.select {|word| word.to_s.include? letter}
end

puts my_array_finding_method(["I", "want", 3, "pets", "but", "only", "have", 2], "o")

# Pseudocode

# input: a hash and a number
# output: a new array of pet names matching the age
# steps:
  # define a method my_hash_finding_method that takes a hash and a number as arguments
  # find the pet names that have the specified age
  # return the names of the pets (keys) that have that age (value)

def my_hash_finding_method(hash, number)
  hash.select {|key, value| value == number}.keys
end

print my_hash_finding_method(my_family_pets_ages, 3)

# Identify and describe the Ruby method(s) you implemented.
# .select : this method returns a new array that contains all of the elements for which the given block returns true
# .include? : this method will return true for every element that includes the specified string or character
# .keys : this method returns a new array populated with the keys from the hash

# Release 2: Teach Others:
# To use .select: pass a block to the select method to tell it what do select for, and boom you have a winner!
# To use .include? : give this method a variable to see if the object includes the variable (evaluates to true).
# To use .keys : this is a hash method used to return the keys for each value in the hash, or if you chain it with another method (like I did with select), it will give a specific subset of keys.
# Ruby docs tips: I'm a big fan of using command+F and searching for key words rather than clicking on individual methods-for example, if I need something that will return a new array, I will search for "new array", if I need something that works by adding the elements of an array, I will search for "add" or "combine" etc. etc.  That really helped when there were too many (seemingly) fitting methods to look through.


# Person 2
def my_array_modification_method!(arr, pets_to_add)
  # This line is here to make sure all tests initially fail. Delete it when you begin coding.
  arr.map! do |x|
    if x.is_a?(Integer)
      (x + pets_to_add)
    else
       x
    end
  end
end

def my_hash_modification_method!(hsh, years_to_add)
   # This line is here to make sure all tests initially fail. Delete it when you begin coding.
   hsh.each { |k, v| hsh[k] = v + years_to_add }
end

=begin
 Identify and describe the Ruby method(s) you implemented.
  In the two methods abovce I used .map! and .each.
  In the first method I used .map!. .map! invokes the given block once for each element of self, replacing the element with the value returned by the block. In the first method, .map! loops through the array and checks to see if the element is a integer or not. If the element is a integer it adds pets_to_add and if its not a integer it returns the element being looped at that time.
  In the second method I used .each. .each calls the block once for each key in hash, passing the key-value pair as parameters. In the second method, while the key and value were being looped through, the key is returned. At the same time the key is set to the sum of the value and years_to_add and returned.
=end



# Person 3
=begin
  Pseudocode:
  array sorting:
  input: an array of possibly integers and strings.
  output: a new array
  steps:
  Convert every object into a string so they can be compared.
  Sort the array into a new array.

  hash sorting:
  input: a hash of keys as names and values as ages/integers.
  output: a hash of keys as names and values as ages/integers, sorted by ages.
  steps:
  Sort by only the values of each pair.
=end

def my_array_sorting_method(source)
  sorted_array = source.sort_by {|a| a.to_s}
  return sorted_array
end

def my_hash_sorting_method(source)
  sorted_hash = source.sort_by {|a, b| b}
  return sorted_hash
end

# Identify and describe the Ruby method(s) you implemented.
=begin

I used the ".sort" method, which by default sorts all objects in an array from lowest to highest.
You can, however, indicate to the .sort method how you want things to be sorted.
In the Array Sorting method, I used the more specific ".sort_by" method so I could compare everything as strings,
as the sort method cannot compare a string to an integer and so on. ".sort_by" works by defining the object to sort
and how you want to sort it. In this case you can see that we're taking each object one at a time and then converting it
to a string to sort it. That is what {|a| a.to_s} indicates. "a" is representative of each object, and "a.to_s" indicates
how it should be sorted. In this case we want them to be sorted as if they were all strings.

The same method is used for the hash, which is identified by the .sort method as an array of key/value pairs. In this case,
when I called the ".sort_by" method, I'm telling it to take the key/value pair "a,b" but only sort by the value, b. This will
sort the hash values by age.

Reflect!
# What did you learn about researching and explaining your research to others?
I learned that only in the course of explaining the research does the idea truly cement itself into my mind.
It's a great way to fully implant a concept into my brain and assure myself that I've grasped what is happening.

=end

# Person 4
def my_array_deletion_method!(array, a)
  array.delete_if {|x| x.to_s.include? a}
  
end

def my_hash_deletion_method!(hash, name)
  hash.delete_if {|key, value| key == "George"}
end

puts my_array_deletion_method!(i_want_pets,"a")
puts my_hash_deletion_method!(my_family_pets_ages, "George")


# Identify and describe the Ruby method(s) you implemented.
# delete_if - this method deletes an item from an array or hash if after going over the item, it evaluates to true
# include? - returns a true value if an object is present in an array or hash.  good for finding matching values in arrays
# to_s - converts the revceiver to a string.  



# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# The most important method I used here was the delete_if method.  It's fairly simple.  You call the method and set the condition as you would with any other method.
#  After doing so, set the condition you want to evaluate to true to delete the selection you want.
#




