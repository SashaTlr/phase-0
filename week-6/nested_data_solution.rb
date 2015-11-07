# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
 p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
 p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
 p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# number_array.map! do |x|
#   if x.class == Array
#     x.to_a.map! do |y|
#       y + 5
#     end
#   else
#     x + 5
#   end
# end

# p number_array.to_s


# Refactored Solution

# Attempt 1
#number_array.map! do |x|
#  if x.is_a?(Array)
#    x.map do |y|
#      y + 5
#    end
#  else
#    x + 5
#  end
#end#

#p number_array.to_s

# Attempt 2
#number_array.map!{|x| x.class == Fixnum ? x + 5 : x}
#number_array.map!{|x| x.class == Array ? x.map!{|y| y+5} : x}

# Attempt 3
p number_array.map!{|x| x.is_a?(Array) ? x.map!{|y| y+5} : x + 5}
# ============================================================

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

#Initial Solution
=begin
startup_names.map! do |x|
  if x.is_a?(Array)
    x.map do |y|
      if y.is_a?(Array)
        y.map do |z|
          z + "ly"
        end
      else
        y + "ly"
      end
    end
  else
    x + "ly"
  end
end
=end

#Refactored
startup_names.map!{|x| x.is_a?(Array) ?
  x.map!{|y| y.is_a?(Array) ?
    y.map!{|z| z+"ly"}
    : y + "ly"}
    : x + "ly"}

p startup_names

#What are some general rules you can apply to nested arrays?
  #If the level of the nest varies between each index, then a more
  #specific solution has to be written to iterate through each level
  #of the nested array.
#What are some ways you can iterate over nested arrays?
  #Map or map! can be used to iterate, and is useful when testing
  #for certain conditions. Each can also iterate, but it doesn't
  #create a new array or have a destructive method. For this
  #exercise, map seems to be a better choice.
#Did you find any good new methods to implement or did you re-use
#one you were already familiar with? What was it and why did you
#decide that was a good option?
  #I tried select but map! worked better. The destructive version of
  #select filtered out array elements that didn't meet our
  #conditions, while map! retains the elements that fail and then
  #modify the elements that pass.