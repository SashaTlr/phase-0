# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent 45 min on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.




# 0. Pseudocode


# What is the input? an array
# What is the output? returns array with most freq objects
# What are the steps needed to solve the problem?

#define method mode
#make empty hash
#make a key holder for each element in array.
#iterate over each key in hash and assign key value to count.
#find max value in hash
#return keys for max values as an array

# 1. Initial Solution

def mode(my_array)
  data = Hash.new()
  my_array.each {|x| data[x] = my_array.count(x) }
  max_val = data.values.max
  return data.select{|keys,value| value == max_val}.keys
end


# 3. Refactored Solution
def mode(my_array)
  data = Hash.new()
  my_array.uniq.each {|x| data[x] = my_array.count(x) }
  max_val = data.values.max
  return data.select{|keys,value| value == max_val}.keys
end


# 4. Reflection

#Which data structure did you and your pair decide to implement and why?
  #We decided to use a hash to store the elements that we were counting as keys, and then store the frequencies as the key value. This made it easier to pull out the keys for the maximum frequencies, which would then output an array.
#Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
  #They were both pretty simple problems so I didn't notice a difference.
#What issues/successes did you run into when translating your pseudocode to code?
  #We had some typos when using methods, which caused errors that we couldn't decipher easily. We also knew that we should use a hash, but had some issues figuring out how to return the keys for a specified value. We used irb to test the methods to make sure we were implementing them properly before using them.
#What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
  #No new methods except for adding in the unique method to decrease the number of times we counted elements in the array. I guess count is a new method although like min, max, it's intuitive that there's a built in function to perform a count on an array.
