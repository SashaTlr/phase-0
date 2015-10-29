# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 20 minutes on this challenge.

# 0. Pseudocode

# Input: A new die instance with the number of sides initialized
# Output: Sides method that returns number of sides. Roll method that returns a random number between 1 and 6
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new("Die needs at least one side")
    end
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end


# 3. Refactored Solution

class Die
  def initialize(sides)
    raise ArgumentError.new("Die needs at least one side") if sides < 1
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end

# 4. Reflection
#What is an ArgumentError and why would you use one?
  # An argument error is a warning that the input we've used when initializing an object of a certain class has not been initialized correctly. By customizing our Argument errors, we can provide the user with more information on what the problem is.
#What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
  #If it counts, the ArgumentError class is new. Also used the random number generator for the first time. One of the challenges was ensuring that rand was inclusive of the range it was given.
#What is a Ruby class?
  #Ruby is an Object Oriented language. When we create a new object (e.g. Array.new), we are actually creating an instance of the ruby Array class. The classes defines the object and is like a generalized version of a specific object. It includes the parameters of the object, and the methods associated with the object.

#Why would you use a Ruby class?
  #In more complex programs, it becomes a cleaner way to program to be able to define methods related to a particular object, and being able to call it in the program by referring to the object's methods. Object-oriented programming means that the code is organized around objects and their methods, not around data and logical sequences.
#What is the difference between a local variable and an instance variable?
  #An instance variable, defined in a class with an @, are available throughout the methods of one class. A local variable is only available within a method, so if there are multiple methods in a class, a local variable defined in one method will not be accessible to the other methods even though they share the same class.
#Where can an instance variable be used?
  #An instance variable can be used throughout an object's defined methods. It is not available across different instances of a class or across classes.