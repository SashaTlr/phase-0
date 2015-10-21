#Section 4.2 Numbers, Letters, and Variable Assignment

##Release 1:Summarize
###What does puts do?
Puts displays a string output of an object by applying to_s to the object and thus will return jibberish if the object is a string. Puts is not returning a value so it returns nil. Puts adds a new line to the output, unlike print.

###What is an integer? What is a float?
An integer is a whole number that can be either negative, zero, or positive. A float has decimal places so has higher precision.

###What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Integers cannot have decimal places, so division is less precise. If division does not result in a whole number, a float will display the precise result, while in integer division, the result will be rounded down to the nearest whole number.

##Release 2:Try it
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