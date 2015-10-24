# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0
=begin
# Your Solution Below
def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!
  # loop through each integer and keep a count
  # increase count if element is in between (and inclusive of) lower and upper bound
  sum = 0
  list_of_integers.each {|x| sum+= 1 if (x >= lower_bound) && (x <= upper_bound)}
  return sum
end
=end

#refactored
def count_between(list_of_integers, lower_bound, upper_bound)

  list_of_integers.reject! {|x| x < lower_bound || x > upper_bound}

  return list_of_integers.length
end