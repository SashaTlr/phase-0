# Fibonacci Sequence
#Research

#A number is Fibonacci iff one or both of (5*n2 + 4) or (5*n2 – 4) is a perfect square
#However, precision in Ruby and square root function makes this difficult

# Pseudocode
#Create an array with Fibonacci sequence and test if last number is greater or equal to test number
#Inputs: integer
#Outputs: boolean

#DEFINE method where first element of array is 0 and second element
#of array is 1
  #IF last element of array is equal to 0 or 1 then return TRUE

  #WHILE last element of array is less than Integer
  #Add an element to end of array that is equal to sum of last two elements

#Return TRUE if new number is equal to Integer or Return FALSE if new number is greater than Integer


# Initial Solution#

#def is_fibonacci?(num)
#fib_sequence = []
#fib_sequence[0,1] = 0,1
#  until fib_sequence[-1] >= num do
#    fib_sequence.push(fib_sequence[-1] + fib_sequence[-2])
#  end
#  num == fib_sequence[-1]
#end



# Refactored Solution

def is_fibonacci?(num)

fib_sequence = []
fib_sequence[0,1] = 0,1

  until fib_sequence.last >= num do
    fib_sequence.push(fib_sequence.last(2).reduce(:+))
  end

  num == fib_sequence.last

end


=begin
# PezDispenser Class from User Stories

# I worked on this challenge by myself.
# I spent 2 hours on this challenge.


# 1. Review the following user stories:


# Pseudocode
# Class PezDispenser instantiates an array argument input, with the array containing the list of flavors

# Methods of Class PezDispenser#

#DEFINE method pez_count and output integer
#  pez_count returns the length of the flavors array#

#DEFINE method get_pez and output string
#  POP off first element in flavors array
#  RETURN string flavor that was popped off of array#

#DEFINE add_pez with string input for a flavor
#  SHIFT arrays up one element to create an empty first element
#  ADD string of flavour to first element of flavor array#

#DEFINE see_all_pez
#  RETURN string of arrays to list flavours in pez

# Initial Solution

class PezDispenser

  def initialize(flavors)
    @flavors = flavors
  end

  def pez_count
    @flavors.length
  end

  def get_pez
    @flavors.shift
  end

  def add_pez(new_flavor)
    @flavors.unshift(new_flavor)
  end

  def see_all_pez
    p "The flavours in the Pez are #{@flavors.join(', ')}."
  end

end



# Refactored Solution

class PezDispenser
  attr_accessor :flavors

  def initialize(flavors)
    @flavors = flavors
  end

  def pez_count
    @flavors.length
  end

  def get_pez
    @flavors.shift
  end

  def add_pez(new_flavor)
    @flavors.unshift(new_flavor)
  end

  def see_all_pez
    p "The flavours in the Pez are #{@flavors.join(', ')}."
  end

end




# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"





# Reflection
#What concepts did you review or learn in this challenge?
#Reviewed array methods for this challenge as well as creating
#classes. Totally messed up the syntax after working with JS for two
#weeks!

#What is still confusing to you about Ruby?
#I'm getting confused about objects vs classes in Ruby versus JavaScript, how inheritance works. We've looked at nested objects in JS and now I'm trying to understand if we would have nested classes in Ruby, or if we would use subclasses as a parallel to nested JS objects.
#What are you going to study to get more prepared for Phase 1?
#I obviously need to bone up on my understanding of classes, objects, nested objects, etc and the differences between Ruby and JS.

=end
