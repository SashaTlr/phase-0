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