# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The error occurs in this very file, error.rb.
# 2. What is the line number where the error occurs?
# The error is reported to have occured in the very last line, 170.
# 3. What is the type of error message?
# The error is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# The error says ruby expected the keyword "end" and got to the end of the file without getting to it.
# 5. Where is the error in the code?
# The interpreter says the error is at the very end, but in reality the error is within the cartman_hates method.
# 6. Why did the interpreter give you this error?
# The cartman_hates method is never closed. It needs an "end". The current "end" is interpreted as closing the while loop.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# The error occurs on line 36.
# 2. What is the type of error message?
# The type of error is an undefined local variable or method.
# 3. What additional information does the interpreter provide about this type of error?
# I don't believe there is any additional information given, unless (NameError) is supposed to be additional information here.
# 4. Where is the error in the code?
# Based on the information given, the error exists in main, which is all of this code.
# 5. Why did the interpreter give you this error?
# south_park is an undefined local variable so just having it sitting here is confusing to ruby. What is it supposed to do with it?

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# The error occurs on line 51.
# 2. What is the type of error message?
# The error is an undefined method.
# 3. What additional information does the interpreter provide about this type of error?
# There is no additional info.
# 4. Where is the error in the code?
# Like above, the error is just in the code, but it originates from line 51.
# 5. Why did the interpreter give you this error?
# cartman, the method, has not been defined, so ruby has no idea what to do with it when we call it here.

# --- error -------------------------------------------------------
=begin
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')
=end
# 1. What is the line number where the error occurs?
# The error occurs in line 66.
# 2. What is the type of error message?
# The error is "wrong number of arguments".
# 3. What additional information does the interpreter provide about this type of error?
#  The interpreter lets us know that we are attempting to pass 1 argument when the method calls for 0.
# 4. Where is the error in the code?
# The error is in line 70.
# 5. Why did the interpreter give you this error?
# In line 70, we call the method cartmans_phrase and attempt to pass it an argument, yet the method
# 	we defined doesn't take any argument as input.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("boogershits")

# 1. What is the line number where the error occurs?
# The error occurs in line 86.
# 2. What is the type of error message?
# The error is again "wrong number of arguments".
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter lets us know we aren't passing arguments when the method calls for one.
# 4. Where is the error in the code?
# The error is in line 90.
# 5. Why did the interpreter give you this error?
# The method we wrote calls for an argument to be passed to it, yet when we call it we aren't providing one.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!','poopfarts')

# 1. What is the line number where the error occurs?
# The error occurs on line 107.
# 2. What is the type of error message?
# The error is a wrong number of arguments error.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter lets us know we are passing one argument to the method when it requires 2.
# 4. Where is the error in the code?
# The error is in line 111.
# 5. Why did the interpreter give you this error?
# We call the method with only one argument when we defined it to take in two arguments.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# The error occurs on line 126.
# 2. What is the type of error message?
# The error is as such: "String can't be coerced into Fixnum"
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter offers up the handy info, "(TypeError)".
# 4. Where is the error in the code?
# The error is in line 126.
# 5. Why did the interpreter give you this error?
# You can't multiply 5 by any string, let alone "Respect my authoritay!".

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
# The error occurs in line 141.
# 2. What is the type of error message?
# The error message is "divided by 0".
# 3. What additional information does the interpreter provide about this type of error?
# I really don't get why this question keeps being asked. I mean, not really. ZeroDivisionError? Is that supposed to be extra info?
# 4. Where is the error in the code?
# The error is in line 141.
# 5. Why did the interpreter give you this error?
# You can't divide by zero. It's a mathematical no-no, dummy.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# The error occurs in line 157.
# 2. What is the type of error message?
# The error message is "cannot load such file".
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter lets us know the directory where its expecting the file to reside in.
# 4. Where is the error in the code?
# The error is in line 157.
# 5. Why did the interpreter give you this error?
# There is no such file in the directory, therefore we cannot require it.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
"String can't be coerced into Fixnum"
How did you figure out what the issue with the error was?
I looked at the code and determined what was improper about it.
Were you able to determine why each error message happened based on the code? 
Yes.
When you encounter errors in your future code, what process will you follow to help you debug?
The process that will help me to debug is to look at the error message, identify the offensive line, and then examine said
line and any methods or arguments around it to identify the issue.
=end