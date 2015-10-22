=begin
Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.
=end

p 'What is your first name?'
first_name = gets.chomp

p 'What is your middle name?'
middle_name = gets.chomp

p 'What is your last name?'
last_name = gets.chomp

puts 'Hi ' + first_name + middle_name + last_name + '!'

=begin
Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.
=end

p 'What is your favorite number?'
favorite_number = gets.chomp
new_number = favorite_number.to_i + 1

p new_number.to_s + ' is a bigger and better number!'

=begin

How do you define a local variable?
  A local variable whose scope is limited to its parent' function. Calling the variable outside of the function will not work unless the variable has also been defined outside of the function.

How do you define a method?
  A method in Ruby is a function that is defined on an object, since Ruby is an object-oriented language.

What is the difference between a local variable and a method?
  A method is a function, i.e. it is an action that can result in a value or string, while a variable is a container to hold some sort of value or string.

How do you run a ruby program from the command line?
  Assuming ruby is already installed, run ruby <filename>, where the filename is a ruby file (.rb) containing the program.

How do you run an RSpec file from the command line?
To run a test file, reference the program in the spec file, and then use command: rspec <spec file name> where the spec file (.spec) contains a series of tests.

What was confusing about this material? What made sense?
I'm not used to working without a compiler, so the Rspec testing protocols were a bit confusing.

=end