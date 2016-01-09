# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# Split up string of items into an array of strings: item_array
# Iterate over item_array and add each item as a hash key with a value of 1: hash_list
  # print the list to the console [can you use one of your other methods here?]
# output: The hash, hash_list


# Method to add an item to a list
# Prompt user to input item and quantity optionally.
# input: item name and optional quantity
# steps: downcase the input
#Check to see if the item is already on the list.
       # if not, create a new entry in the hash with the quantity as the value.
# output: "You have succesfully added NUMBER OF ITEM to the list."



# Method to remove an item from the list
# Prompt user to input item
# input: Item name string, downcase'd
# steps: Check to see if the item is on the list.
#        If it is, double check with the user that they want to remove it.
#        Remove it.
# output: puts ITEM successfully removed.


# Method to update the quantity of an item
# Prompt user to input item
# input: Item name string, downcased
# steps: Check to see if the item is on the list
#        if it is, puts the current quantity (hash value)
#        and ask what the new value should be.
#        Input the new value and update the hash.
# output: puts "You have changed ITEM quantity to QUANTITY.

# Method to print a list and make it look pretty
# input: the hash created by previous methods.
# steps: Puts "Your grocery list:"
#        Iterate through the hash and put each key value pair, formatted to look nice.
# output: The list as a bunch of strings.


def grocery_print(hash)
  puts "Your grocery list:"
  hash.each do |key, value|
    puts "#{key}: #{value}"
  end
end

def grocery_list()
  puts "Type out all the items you want to add with a space in between!"
  stringlist = gets.chomp.split(" ")
  grocery_hash = Hash.new
  stringlist.each do |x|  
    grocery_hash[x]=1
  end
  grocery_print(grocery_hash)
  return grocery_hash
end
full_list = grocery_list

def add_item(full_list)
  puts "What item would you like to add?"
  item = gets.chomp.downcase 
  if full_list[item].nil?
  	puts "How many would you like to add?(please enter a positive integer value)"
    quantity = gets.chomp.to_i
    full_list[item] = quantity
    puts "You have added #{item} with a quantity of #{quantity}"
    grocery_print(full_list)
  else puts "This item already exists!"
    end
  return full_list
end
full_list = add_item(full_list)


def remove_item(full_list)
  puts "What item would you like to remove?"
  item = gets.chomp.downcase
  
  if full_list[item].nil?
    puts "This item doesn't exist!"
  else 
    full_list.delete(item)
    puts "#{item.capitalize} has been removed successfully"
    grocery_print(full_list)
    end
  return full_list
end
full_list = remove_item(full_list)

def update_quantity(full_list)
  grocery_print(full_list)
  puts "What item would you like to update the quantity of?"
  item = gets.chomp.downcase
  if full_list[item].nil?
    puts "This item doesn't exist!"
  else 
    puts "What is the new quantity?"
    quantity = gets.chomp.to_i
    full_list[item]= quantity
    puts "#{item.capitalize} quantity has been updated!"
    grocery_print(full_list)
  end
  return full_list
end
full_list = update_quantity(full_list)

=begin

What did you learn about pseudocode from working on this challenge?
This challenged reaffirmed the concept of including specific input and output for each step.
This is really important when it comes to passing data between methods, because you need to be aware
of what the method returns and also what argument it accepts.

What are the tradeoffs of using Arrays and Hashes for this challenge?
Arrays and Hashes take up more data space because they contain more data space. However, that capacity is exactly why one uses them.
Now, you could have a program that just pushes items to a string or removes them from that string, but its more complicated
to search through the string and manipulate that data each time you want to add, delete or update something.

What does a method return?
A method can return whatever you want it to. Likely, the method returns an object that has been manipulated somewhere within the method.
However, a method could just return the word "fart" if you wanted.

What kind of things can you pass into methods as arguments?
A method can accept any string, integer or float, or even arrays or hashes as input.

How can you pass information between methods?
In order to pass information between methods one needs to define a variable as equal to the output of a particular method. Then a
different method can use that variable as an input argument.

What concepts were solidified in this challenge, and what concepts are still confusing?
The whole concept of a local variable, and the localization of variables within methods vs outside of them really solidified for me.
I also solidified how one can take and output from one method and use it as the input for another.

=end