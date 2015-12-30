puts "What is your first name?"
first_name=gets.chomp
puts "What is your middle name?"
middle_name=gets.chomp
puts "What is your last name?"
last_name=gets.chomp
puts "Hello, "+first_name+" "+middle_name+" "+last_name+"!"
puts #whatever
puts "What's your favorite number?"
fav_num=gets.chomp.to_i
fav_num=fav_num+1
puts "Hmmm...seems like a bigger, better number might be #{fav_num}!"

=begin
How do you define a local variable?
	You define a local variable by setting it equal to whatever data you want it to contain (i.e. local_variable = data).
How do you define a method?
	You define a method using "def" (i.e. def method_name) and closing it with "end". 
What is the difference between a local variable and a method?
	A local variable is stored in memory and can be recalled or manipulated. 
	A method is almost like a little program within a program, and can take its own inputs, including local variables.
	You can request input to store within a local variable and that will be stored in computer memory.
	You can also request input to use within a method, which when run will return whatever the method returns.
How do you run a ruby program from the command line?
	You type "ruby" followed by the program file name.
How do you run an RSpec file from the command line?
	You type "rspec" followed by the file name.
What was confusing about this material? What made sense?
	Nothing was confusing about it. It was mostly review of the most basic ruby stuff we learned prior to the interview.
	It all made complete sense, as it was review.


https://github.com/thepintar/phase-0/blob/master/week-4/address/my_solution.rb
https://github.com/thepintar/phase-0/tree/master/week-4/math/my_solution.rb
=end