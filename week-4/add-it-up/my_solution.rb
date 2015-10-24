# Add it up!

rescue Exception => e

end
# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Amaar

# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Amaar.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: An array of numbers that include floats and integers
# Output: A float or integer- all the numbers in an array added up

# Steps to solve the problem.

#initialize a variable(number) to hold our sum
#use a loop to iterate over each element in the array
#in loop add each element to the variable
#return variable- sum of numbers in the array


# 1. total initial solution

def total(arr)
number = 0
arr.each { |x| number += x}
  return number
end


# 3. total refactored solution

def total(arr)
  x = arr.reduce(:+)
  return x
end



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: An array of strings
# Output: Elements joined into a sentence (string) with the first letter of first element is capitalized, the sentence ends with a '.', and the elements should be separated by a space.

# Steps to solve the problem.

#1. Iterate over string elements of array
#2. Add each element to previous element with a space separating each element.
#3. Capitalize the first letter of the sentence and end the sentence with a '.' after the last element.
#

# 5. sentence_maker initial solution
def sentence_maker(arr)
  x = ''
  #Concatenate each element with a space
  arr.each{|y| x << y.to_s << ' '}

  #Take out any leading or trailing white space
  x.strip! << '.'
  x[0] = x[0].capitalize
  return x
end

# 6. sentence_maker refactored solution

def sentence_maker(arr)

  #Concatenate each element with a space
  x = arr.inject {|x, y| x <<' '<< y.to_s} << '.'
  x[0] = x[0].capitalize

  return x
end
