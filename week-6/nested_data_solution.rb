# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:   
p array[1][1][2][0]
# ============================================================



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
p hash[:outer][:inner]["almost"][3]
# ============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
p nested_data[:array][1][:hash]
# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |number|
  if number.kind_of?(Array)
    number.map do |array_num|
      array_num += 5
    end
  else
    number += 5
  end
end
p number_array
puts number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# startup_names.map! do |name|
#   if name.kind_of?(Array)
#     name.map do |name_array|
#       if name_array.kind_of?(Array)
#         name_array.map {|nested_name_array| nested_name_array += "ly"}
#       else
#         name_array += "ly"
#       end
#     end
#   else
#     name += "ly"
#   end
# end

# puts startup_names
#refactored and altered slightly
# startup_names.flatten!.map! {|name| name += "ly"}
# puts startup_names

# What are some general rules you can apply to nested arrays?
# Generally, the same rules that apply to arrays apply to nested arrays. You can access any item in an array using the array_name[index_number]
# notation, but if you want to access a nested array you use array_name[index_number][nested_index_number]. Its also important to keep in mind
# when iterating through an array that unless specified through a conditional statement, you will not interate through the items nest within the array,
# 	but only the first level items. You may be expecting to get every item from within an array inside of an array, but you will only get the array itself.

# What are some ways you can iterate over nested arrays?
# You can use the same methods we've been using (i.e. .each, .map), but once iterating through the main array its necessary to conditionally check
# to see if there is a nested array. We did that by using the statement "if array_item.kind_of?(Array)" followed by another iterator within the
# conditional. The else option just modifies the data and iterates to the next object. What this does is check to see if there is a nested array, and
# if there is, to iterate through each object within that array before going onto the objects within the base array.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? 
# What was it and why did you decide that was a good option?
# We didn't find any methods to refactor with that would return an identical array, but we found the method .flatten, which returns an array
# without all the nesting. If the purpose of this code was just to add "ly" to names rather than to preserve the array architecture this would
# allow a refactoring down to one line!
