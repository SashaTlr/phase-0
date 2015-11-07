# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.
# Pseudocode

# Input: Integer
# Output: Integer
# Steps:

#CLASS variables
#An integer input
#An array
#An integer sum#

#DEFINE method #

#  ITERATE through credit card number
#    assign array element to integer#

#
#  If length of array is not 16 then credit card number is invalid
#  Return array
#
#DEFINE method#

#    ITERATE over every other element starting at first element
#      Multiple array element by two
#
#    Return array#

#DEFINE method to sum array
#    ITERATE over array
#      DIVIDE each element by 10 to get divisor
#      MODULATE each element by 10 to get remainder
#    Add the divisor to the remainder
#    Increase the total sum
#    Return the sum

#DEFINE check_card
#    IF integer is perfectly divisible by 10
#    Then credit card passes
#

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize ( userNum )
    if userNum.to_s.size < 16
      raise ArgumentError( 'Card number not long enough!' )
    elsif userNum.to_s.size > 16
      raise ArgumentError( 'Card number too long!' )
    else
      remainder = userNum
      @cardNum = Array.new( 16 )
      @cardNum.each_index do |i|
        @cardNum[ i ] = remainder / ( 10 ** ( 15 - i ) )
        remainder = remainder % ( 10 ** ( 15 - i ) )
      end
    end
  end

  #DEFINE method#

#    ITERATE over every other element starting at first element
#      Multiple array element by two
#
#    Return array#
  def double_array
    return @cardNum.each_index.map do |i|
      if i % 2 == 0
        @cardNum[i] * 2
      else
        @cardNum[i]
      end
    end

  end

  def array_sum

    totalsum = double_array.inject(0) {
      |sum, x| sum += (x/10) + (x%10)
      }
  end

  def check_card
    array_sum % 10 == 0 ? true : false
  end

  def debug
    p @cardNum
    p double_array
    p array_sum
    p check_card
  end
end


mycard = CreditCard.new( 4563960122001999 )
mycard.debug

# Refactored Solution
class CreditCard
  def initialize ( userNum )
    if userNum.to_s.size < 16
      raise ArgumentError( 'Card number not long enough!' )
    elsif userNum.to_s.size > 16
      raise ArgumentError( 'Card number too long!' )
    else
      @cardNum = userNum.to_s.split('').map{|i| i.to_i}
    end
  end

  def double_array
     @cardNum.each_index.map { |i|
      i.even? ? @cardNum[i] * 2 : @cardNum[i]
      }
  end

  def array_sum
    totalsum = double_array.inject(0) {
      |sum, x| sum += (x/10) + (x%10)
      }
  end

  def check_card?
    array_sum % 10 == 0 ? true : false
  end

  def debug
    p @cardNum
    p double_array
    p array_sum
    p check_card?
  end
end


mycard = CreditCard.new( 4563960122001999 )
mycard.debug







# Reflection