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