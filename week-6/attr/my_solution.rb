#Attr Methods

# I worked on this challenge by myself.

# I spent 1 hour on this challenge.
class NameData
  attr_reader :name
  def initialize
    @name = "Sasha Tailor"
  end
end

class Greetings
  def NameData
    @namedata = NameData.new
  end

  def hello
    puts "Hello Student! How wonderful to see you today."
  end
end

# Your Code Here:

greet = Greetings.new
greet.hello # puts "Hello Student! How wonderful to see you today."


# Reflection

# Release 1

# What are these methods doing?
# These methods are doing two things. One set of methods are "getting", i.e. returning the values of the instance variables, and the other set of methods are "setting", or setting/modifying the values stored in the instance variables.
# How are they modifying or returning the value of instance variables?
#They're returning a value by calling the instance variable in the methods. They modify the values by setting the instance variables to the value in the method arguments.

# Release 2
#What changed between the last release and this release?
  # The age instance variable was included in attr_reader, which means that a separate getter method doesn't need to be used to return the age variable.
#What was replaced?
  # The get method from release 1 was eliminated by including the attn_reader.
#Is this code simpler than the last?
  # Yes, it's simpler. One less method.

# Release 3
#What changed between the last release and this release?
#  Attn_writer has been added to the file and includes the age variable.
#What was replaced?
#  The method to override the value stored in the age variable has been taken out.
#Is this code simpler than the last?
#  Yes, again, one method less.

# Release 5
#What is a reader method?
#  A reader method is a get function that lets you pull the variables read them out.
#What is a writer method?
#  A writer method is a set function that lets you modify or write the variables.
#What do the attr methods do for you?
#  It saves you from writing get and set methods separately by implicitly implying the functionality based on how you set the attr method (attr_reader, attr_writer, attr_accessor)
#Should you always use an accessor to cover your bases? Why or why not?
#  You don't want to use an accessor if you don't want to be able to override your variables, as you're giving extra functionality and opening up room for error.
#What is confusing to you about these methods?
#  Not much, they're pretty basic.
