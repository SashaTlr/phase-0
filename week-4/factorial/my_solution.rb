# Factorial

# I worked on this challenge [by myself, with: ].

#input - non-negative number > 0

# if number is 0 set return to 1

#if number is non zero then you multiply that number by itself - 1 loop through the rest of the numbers until you get to 1


# Your Solution Below

def factorial(number)
  x = 1
  number.times { |i| x = (i+1) * x}


  return x
end
