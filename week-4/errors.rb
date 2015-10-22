# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
# end


# This is a tricky error. The line number may throw you off.
#
# 1. What is the name of the file with the error?
#    The name of the file is errors.rb.
# 2. What is the line number where the error occurs?
#    The line number where the error occurs is line 8.
# 3. What is the type of error message?
#    The type of error is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
#    The interpreter was not expecting an '=' sign, it was expecting an end_of_input.
# 5. Where is the error in the code?
# =>The interpreter was not execting an equals sign between the sentence and a variable.
# 6. Why did the interpreter give you this error?
# The variable assignment does not work in this order in ruby. To assign a variable a string, the variable has to be written first, followed by = and string.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# The error message indicates an error on line 36.
# 2. What is the type of error message?
# Undefined local variable or method in code
# 3. What additional information does the interpreter provide about this type of error?
# The error occurs in the main object, and it is a naming error.
# 4. Where is the error in the code?
# The error is in the 'main' code, and occurs immediately upon execution.
# 5. Why did the interpreter give you this error?
# The interpreter gives this error because there is a stand alone variable that has not been initialized or assigned a value, and has no method attached.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# The error occurs on line 51.
# 2. What is the type of error message?
# The error type is an undefined method.
# 3. What additional information does the interpreter provide about this type of error?
# There is not a method defined, and the method name causing this error is 'cartman' under the main object.
# 4. Where is the error in the code?
#The error is at the beginning when the cartman method is called.
# 5. Why did the interpreter give you this error?
# We haven't defined a method called cartman, but are trying to call it. It knows it's a method because it has arguments, implied by the ().

# --- error -------------------------------------------------------
=begin
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')
=end

# 1. What is the line number where the error occurs?
# The error is triggered on line 66 from line 70
# 2. What is the type of error message?
#  It is an argument error, there is a wrong number of arguments included when the method is called.
# 3. What additional information does the interpreter provide about this type of error?
# 1 argument is provided when it should be 0. The method is incorrectly called at line 70.
# 4. Where is the error in the code?
#Line 70, cartmans_phrase.
# 5. Why did the interpreter give you this error?
# The call tried to put in the argument 'I hate Kyle', but the method cartmans_phrase does not take any arguments.

# --- error -------------------------------------------------------
=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says
=end
# 1. What is the line number where the error occurs?
# The error occurs at line 86.
# 2. What is the type of error message?
# It is an argument error.
# 3. What additional information does the interpreter provide about this type of error?
# The error is in method cartman_says. There are 0 arguments provided when the method is called, but it should inlude 1.
# 4. Where is the error in the code?
#The incorrect call is at line 90.
# 5. Why did the interpreter give you this error?
# The interpreter gives this error because when the cartman_says method is called, it doesn't contain the required argument.



# --- error -------------------------------------------------------
=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end
# 1. What is the line number where the error occurs?
# The error occurs on line 107.
# 2. What is the type of error message?
# This is an argument error.
# 3. What additional information does the interpreter provide about this type of error?
# The method call is providing one argument but the method requires two.
# 4. Where is the error in the code?
# The error is triggered in the call on line 111.
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because it cannot run the cartmans_lie method without two arguments.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# Line 126
# 2. What is the type of error message?
# TypeError.
# 3. What additional information does the interpreter provide about this type of error?
# The string can't be forced into a number.
# 4. Where is the error in the code?
# The error is in the * method.
# 5. Why did the interpreter give you this error?
# The method required a multiplication of two numbers, and can only return a string of "multiples" of a string if the string comes first in the function/

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# Error occurs on line 141.
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter cannot divide a number by 0. It is being asked to do this on line 141.
# 4. Where is the error in the code?
# At the '/' method.
# 5. Why did the interpreter give you this error?
# It can't interpret a division by 0 because that is not a number.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Error occurs on line 157.
# 2. What is the type of error message?
# It's a Load error.
# 3. What additional information does the interpreter provide about this type of error?
# It isn't able to load a file from the week-4 directory. This error is being triggered by the require_relative call.
# 4. Where is the error in the code?
# In the require_relative function.
# 5. Why did the interpreter give you this error?
# The interpreter gave me this error because it cannot find the .md file in the root directory.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
The errors were all pretty obvious to read. The method call errors were a bit confusing because the error message makes it sounds like the error is occuring on the method line, when it's really a problem with how the method was called.

How did you figure out what the issue with the error was?
The error message made it clear what the problem was and where to find it, but the errors were obvious by eyeballing the methods.
Were you able to determine why each error message happened based on the code?
Yes, these were pretty basic errors.
When you encounter errors in your future code, what process will you follow to help you debug?
I will first use the error message to narrow down the lines that contain the errors, and then use the error message to determine the type of error. From there, will go through the code to determine a fix.
=end