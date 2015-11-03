# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: One string element from array input
# Steps:

#1) Initialize array of strings
    # Exception: Raise an ArgumentError IF Die.new is passed an empty array
    # ELSE initialize array
#2) sides: count and return the number of sides of array
#3) roll: select a side randomly and return string element



# Initial Solution
=begin
class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("Dice does not have any sides.")
    end
    @labels = labels
  end

  def sides
    return @labels.length
  end

  def roll
    return @labels[rand(sides)]
  end
end
=end


# Refactored Solution
class Die
  def initialize(labels)
    raise ArgumentError.new("Dice does not have any sides.") if labels.empty?
    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels[rand(sides)]
  end
end

# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
  #Not a lot of logic was changed, but I refactored a little more than in my last solution. The length function was added to the sides method.
# What does this exercise teach you about making code that is easily changeable or modifiable?
  # Well thought out code can be modified without falling apart. If the code is malleable, it can save a lot of time applying it to a new function with a few modifications.
# What new methods did you learn when working on this challenge, if any?
# What concepts about classes were you able to solidify in this challenge?
  #Passing a method into another method within the same class. I wasn't sure if I could call sides in the roll method, but it works fine.