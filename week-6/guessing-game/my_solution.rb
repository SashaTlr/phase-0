# Build a simple guessing game

# I worked on this challenge by myself.
# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: Integer called guess
# Output: GuessingGame#guess: Input: guess integer. Returns symbol :high if guess is > answer, :correct if the guess is equal to the answer, and :low if the guess is lower than the answer.
  #Solved? Input: Last instance of Guess Output: True or False
# Steps:
#Guess method:
#  1) Define method with guess argument
#  2) Compare guess to answer. Guess can be higher, lower, or correct compared to answer.
#Solved method:
#  3) Solved? input is the symbol returned from guess. If symbol is correct, then the method returns true, otherwise it returns false.



# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess_num)
    if guess_num > @answer
      @guess = :high
    elsif guess_num < @answer
      @guess = :low
    elsif guess_num == @answer
      @guess = :correct
    end
  end

  def solved?
    if @guess == :correct
      true
    else
      false
    end
  end

end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @guess
  end

  def guess(guess_num)
    if guess_num > @answer
      @guess = :high
    elsif guess_num < @answer
      @guess = :low
    elsif guess_num == @answer
      @guess = :correct
    end
  end

  def solved?
    case @guess
    when :correct
      true
    else false
    end
  end
end


# Reflection
#How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  #The instance variables and methods are similar to real-world objects in that an object will have specific characteristics to itself, much like instance variables. Similar objects will also be able to perform similar actions, but because they have different instances, their results can vary. E.g. most people can walk, but how fast they walk will vary depending on their physical abilities.
#When should you use instance variables? What do they do for you?
  #Instance variables are bound to one instance of the entire class, instead of within just the method. These are useful when they are specific to one instance of an object, not every object of that class. In addition, you want an instance variable when it should be accessible to multiple methods of the class.
#Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  # Flow control is about how variables flow through methods, what gets passed on, what only gets modified locally versus throughout a class or globally. I had trouble passing the guess result into solved. I wasn't sure how to return the result to solved without having to return the guess number that was used in the last guess method. I realized that I could initialize a variable that holds the last result of the guess method, and pass that into solved?.
#Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  #symbols are immutable, so they cannot be modified within the code. Once they're set, they're set. They are also easier to compare than strings. I think this decreases the room for error in the code, especially when a string is not needed in a return value, but the naming convention of the method result can provide useful information (e.g. high & low instead of 1, -1).