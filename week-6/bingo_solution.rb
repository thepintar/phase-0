# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# # Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
# Create an array with the letters of BINGO in it and use the .sample method to pick one at random. Use .with_index to get the index.
# Generate a random number using the rand method.

# Check the called column for the number called.
# Use the index from the random letter called to identify the column and check every array at that index for the number.

# If the number is in the column, replace with an 'x'
# Use .map! to replace the number with an x.

# Display a column to the console
# Iterate through the arrays and puts each object at a particular index.

# Display the board to the console (prettily)
# Puts each array to the screen with equal space in between each object.

# Initial Solution

class BingoBoard

   def initialize(board)
      @bingo_board = board
   end

   def new_board

      b_nums=Array.new()
      until b_nums.count == 5
         rand_num = rand(1..15)
         unless b_nums.any? {|num| num == rand_num}
            b_nums << rand_num
         end  
      end

      i_nums=Array.new()
      until i_nums.count == 5
         rand_num = rand(16..30)
         unless i_nums.any? {|num| num == rand_num}
            i_nums << rand_num
         end
      end

    n_nums=Array.new()
    until n_nums.count == 5
      rand_num = rand(31..45)
      unless n_nums.any? {|num| num == rand_num}
         n_nums << rand_num
      end
    end
    n_nums[2]="X"

    g_nums=Array.new()
    until g_nums.count == 5
      rand_num = rand(46..60)
      unless g_nums.any? {|num| num == rand_num}
         g_nums << rand_num
      end
    end

    o_nums=Array.new()
    until o_nums.count == 5
      rand_num = rand(61..75)
      unless o_nums.any? {|num| num == rand_num}
         o_nums << rand_num
      end
    end

    @bingo_board.map!.with_index do |row, index|
      row=[b_nums[index],i_nums[index],n_nums[index],g_nums[index],o_nums[index]]
    end

  end

  def call

    letters = ["B","I","N","G","O"]
    call_letter = letters.sample

    letters.each.with_index do |letter, index|
      if call_letter == letter
        @call_index = index
      end
    end
    @call_number=rand((@call_index*15+1)..(@call_index*15+15))
    return call_letter+@call_number.to_s
  end

  def check

    @bingo_board.each do |row|

      if row[@call_index] == @call_number
        row[@call_index] = "X"
      else 
        row[@call_index] = row[@call_index]
      end
    end

    return @bingo_board
  end

  def show_board

    puts " ------B-I-N-G-O------"

    @bingo_board.each do |row|
      print "| "
      row.each do |num|
        if num.to_i > 9
          print num.to_s + "  "
        elsif num == "X"
          print "X   "
        else
          print num.to_s + "   "
        end
      end
      print "|\n"
    end

    puts " ---------------------"
  end

end

# Refactored Solution
#Nothing to refactor


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)




100.times do
  new_game.call
  new_game.check
end
puts ""
new_game.show_board
new_game.new_board

100.times do
  new_game.call
  new_game.check
end
puts ""
new_game.show_board

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# The pseudocoding wasn't particularly difficult. I'm worried that I might be knocked down a grade for not somehow describing more
# in my psuedocode, but I can't think of any more detail I could go into! The solution I came up with was as simple as the code suggests,
# which I feel means the psuedocode accurately outlined what was to come!

# What are the benefits of using a class for this challenge?
# The big benefit, I feel, is the use of the instance variables that can be shared between the methods. The ability to establish the
# array index when each letter is called and to store that until we check it against the board really simplified everything.
# The other benefit is that it translates so well to the real-world concept of the bingo game. The BingoBoard class contains all the rules
# for the game within it. We can also create multiple games at once, each with their own unique boards.

# How can you access coordinates in a nested array?
# There are a few ways to access coordinates in a nested array. You can nest iterators, so the first one iterates through the arrays, and the
# nested one iterates through each object in each array, etc. You could also directly point to an object, say the first object in the second array,
# by indicating its position like so: array[1][0]. This says to look at the object at index 1, which is the second array, and then look at the
# object within that array at index 0, which is the first object.

# What methods did you use to access and modify the array?
# I used .each to iterate through the objects in the array and .map! to iterate and create a new board.

# Give an example of a new method you learned while reviewing the Ruby docs. 
# Based on what you see in the docs, what purpose does it serve, and how is it called?
# I learned about the .any? method, which iterates through an array, and in my case, checks to see if a number already exists there.
# I used it to fill a new array with five unique random numbers. You can use it with any argument to check the contents of an array.
# It'd be a great way to analyze an array to make sure it only contains expected objects before passing it through some sort of
# processing, avoiding bugs and errors.

# How did you determine what should be an instance variable versus a local variable?
# Anything that I knew I'd need in multiple methods became an instance variable, whereas any variable that did not need to be accessed
# in different methods remained a local variable. In my case I only needed to pass the call letter's index and the call number so those
# were the only two that were instance variables.

# What do you feel is most improved in your refactored solution?
# Well, I totally couldn't find anything to refactor here, which is always a bummer, but I feel the code is really clear. The only things
# I felt I could do were to pair down an if/then into a ternary operation but it wouldn't have looked too good and wouldn't have been very clear.
# I hope I didn't miss something obvious, but my base code (outside of creating random number arrays for the board) is pretty simple.

