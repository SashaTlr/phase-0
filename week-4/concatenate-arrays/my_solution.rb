# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below
=begin
def array_concat(array_1, array_2)
  # Your code here

  #  Step 1: get lengths of two arrays
  #  Step 2: create a new array and iterate array1 into new array
  #  Step 3: create a new array and iterate array2 into new array

  array_1_length = array_1.length
  array_2_length = array_2.length

  new_array = Array.new(array_1_length + array_2_length)

  array_1.each{|x| new_array[array_1.index(x)]=x}

  array_2.each{|x| new_array[array_2.index(x)+array_1_length]=x}


  return new_array

end
=end

#refactored solution

def array_concat(array_1, array_2)
 return array_1.concat(array_2)
end