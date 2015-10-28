# Pad an Array

# I worked on this challenge with Joshua Shin

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# Array of positive integer, integer that represents size of array, optional padding variable
# What is the output? (i.e. What should the code return?)
# Array of positives integers and strings
# What are the steps needed to solve the problem?
# Step 1, check size of array is smaller than minimum size.
# Step 2, if it's smaller than minimum size, push padding variable into array and rewrite array
# Step 3, Return array
# Step 4, for non-destructive array, check if its size is smaller than minimum value
# Step 5, if it's smaller, create a new array which includes the original values and adds additonal padding variables
# Step 6, Return array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here

  if array.size < min_size
    values_to_add = min_size - array.size

    temp_array = Array.new(values_to_add, value)

    array.concat(temp_array)
    #Array.new(min_size,value)
  end
  return array

end



def pad(array, min_size, value = nil) #non-destructive

  new_array = array.clone
  # Your code here
    if array.size < min_size
      values_to_add = min_size - array.size

      temp_array = Array.new(values_to_add, value)

      new_array += temp_array
    end
  return new_array
end



# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if array.size < min_size
    array.concat(Array.new(min_size - array.size, value))
  end
  return array
end


def pad(array, min_size, value = nil) #non-destructive
  new_array = array.clone
    if array.size < min_size
      new_array += Array.new(min_size - array.size, value)
    end
  return new_array
end



# 4. Reflection
#Were you successful in breaking the problem down into small steps?
  #Yes...
#Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
  #Yes, was very easy to translate. The destructive method was not a problem, but we ran into issues with the non-descructive method because our new array was pointing to the original object instead of creating a clone. So when no changes were made to the array, it retained the original object id and failed.
#Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
  # Same as above, the method would fail whenever the object ids matched in our non-destructive method. We eventually googled how to create a copy of an object but give it a new object id, which is how we found the clone method in the ruby docs.
#When you refactored, did you find any existing methods in Ruby to clean up your code?
  # Not really. We didn't use iteration in our initial solution, instead we created a new array that repeated the padding variable for the number of times needed. Since we weren't iterating, our solution was already very compact.
#How readable is your solution? Did you and your pair choose descriptive variable names?
  # So readable! We made sure to use names that pretty explicitly described what was going on so we could follow the code.
#What is the difference between destructive and non-destructive methods in your own words?
  #destructive methods will modify the original object_id to contain the new values, while non-destructive methods will have a new object_id. This is what caused us problems when building our non-descructive method. We made a new array that we would return, thinking that creating the new array would create a new object id. However, we set the new array equal to the old array, thinking that that would make a copy, when it's really pointing to the same place. If the new array's contents aren't modified, it retains the same object id as the original id, so it isn't a non-destructive method.