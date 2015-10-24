# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  # Your code goes here!
  #initialize shortest_string and set to first element of array
  #Will set to nil if array is empty
  longest_string = list_of_words[0]

  #Each element in the array needs to be measured against the shortest element

  list_of_words.each {|x| longest_string = x if x.length > longest_string.length}

  return longest_string
end
