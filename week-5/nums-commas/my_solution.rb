# Numbers to Commas Solo Challenge

# I spent 20 minutes on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Integer
# What is the output? (i.e. What should the code return?) String with commas
# What are the steps needed to solve the problem?

#Convert integer to a String
#  Use an integer to string method to convert to string#

# Divide length of string -1 by 3 to get the number of commas needed

#Counting from right to left, insert a comma into the string after every three zeros
  #String length changes by 1 each time and starts at 0. Increase every FOUR characters
  #Counter starts at 0 not 1, so increase counter by 1 in loop
#Return string

# 1. Initial Solution

def separate_comma(integer)

# Convert integer to a string
  string_integer = integer.to_s

# Get comma count
  comma_num = (string_integer.length - 1)/3
    return string_integer if comma_num == 0

#insert comma every four characters
  comma_num.times {|i| string_integer.insert(-4*(i+1),",")}
  return string_integer
end


# 2. Refactored Solution

# 1) Convert to string
# 2) Reverse 1: Scan can break string every three characters but reads left to right, and any  residual characters are tacked on at end of string. We need to reverse string before applying scan because we need scan applied right to left.
# 3) Use scan method to break every 3, catch extra integers by using range {1,3}
# 4) Join string by commas using join method
# 5) Reverse string back to original order

def separate_comma(integer)
  return integer.to_s.reverse.scan(/.{1,3}/).join(",").reverse
end

# 3. Reflection
#What was your process for breaking the problem down? What different approaches did you consider?
  # My approach was to think of how I would solve this problem using a looping structure. I initially was trying to factor out my initial integer to determine how many commas to insert, which I realized wasn't the best approach, so switched to measuring the length of the string to determine the number of commas.

#Was your pseudocode effective in helping you build a successful initial solution?
  # The pseudocode was very helpful in keeping my code organized. The indexing used in the loop threw me off a little, so printing out each line helped a lot as well.

#What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
  # The refactoring actually doubled the time it took to run my code. I initially used scan but didn't put in the first reverse, and was testing using palindrome numbers, so tricked myself into thinking the solution was correct. Oddly enough, it passed the rspec tests as well. I realized after playing around a bit that scan applied to the string wouldn't work properly, so I tried abandoning it for gsub or another method, but couldn't figure out what to apply. I eventually went back to scan and realized I could reverse twice to get the correct solution.

#How did you initially iterate through the data structure?
  # I calculated the number of commas needed and then used .times to loop through.

#Do you feel your refactored solution is more readable than your initial solution? Why?
  # While it looks nicer, I find my initial solution more readable because you can see the individual steps. It seems more intuitive, while the refactored solution is a stream of methods. I'd have a lot more trouble debugging my refactored solution if there were any issues.
