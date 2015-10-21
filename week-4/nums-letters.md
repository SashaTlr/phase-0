#Section 4.2 Numbers, Letters, and Variable Assignment

##Release 1: Summarize
###What does puts do?
Puts displays a string output of an object by applying to_s to the object and thus will return jibberish if the object is a string. Puts is not returning a value so it returns nil. Puts adds a new line to the output, unlike print.

###What is an integer? What is a float?
An integer is a whole number that can be either negative, zero, or positive. A float has decimal places so has higher precision.

###What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Integers cannot have decimal places, so division is less precise. If division does not result in a whole number, a float will display the precise result, while in integer division, the result will be rounded down to the nearest whole number.

##Release 2: Try it
###Hours in a year
```ruby
irb(main):001:0> 24*365
=> 8760
```
###Minutes in a decade
```ruby
irb(main):005:0> 10 * 365 * 24 * 60
=> 5256000
```

##Release 5: Exercises

[Assignment 4.2.1: Defining Variables](https://github.com/SashaTlr/phase-0/blob/master/week-4/basic-math.rb)

[Assignment 4.2.2: Simple String Methods](https://github.com/SashaTlr/phase-0/blob/master/week-4/simple-string.rb)

[Assignment 4.2.3: Local Variables & Arithmetics](https://github.com/SashaTlr/phase-0/blob/master/week-4/defining-variables.rb)

##Release 7: Reflect
###How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby uses the normal order of arithmetic, however, it is important to specify the input numbers as float or integer to get precise results.
###What is the difference between integers and floats?
Integers are all whole numbers and their negatives, while floats are decimal numbers to a certain precision.
###What is the difference between integer and float division?
A float has decimals so will give a precise result, while integers do not store decimal places so will round down the result to the nearest whole number.
###What are strings? Why and when would you use them?
Strings are essentially an array of characters. They do not contain a boolean or numerical value, so are used for things like printing statements.
###What are local variables? Why and when would you use them?
Local variables are variables defined within the local environment. These are used when the variables do not need to be carried through the entire global environment, and need to be passed through a function.
###How was this challenge? Did you get a good review of some of the basics?
Challenge was good, the review didn't really talk about local versus global variables though.
