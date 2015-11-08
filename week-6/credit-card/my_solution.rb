# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Peter.
# I spent 3 hours on this challenge.
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
=begin
class CreditCard
  def initialize ( userNum )
    if userNum.to_s.size < 16
      raise ArgumentError.new( 'Card number not long enough!' )
    elsif userNum.to_s.size > 16
      raise ArgumentError.new( 'Card number too long!' )
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

=end
# Refactored Solution
class CreditCard
  def initialize ( userNum )
    if userNum.to_s.size < 16
      raise ArgumentError.new( 'Card number not long enough!' )
    elsif userNum.to_s.size > 16
      raise ArgumentError.new( 'Card number too long!' )
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

  def check_card
    array_sum % 10 == 0 ? true : false
  end

  def debug
    p @cardNum
    p double_array
    p array_sum
    p check_card?
  end
end


# Reflection
#What was the most difficult part of this challenge for you and your pair?
# => We have very different work styles, and I think we clashed a bit during our pairing session. On my pair's end, I think he was stressed out with work and was focused on plowing through without realizing that he was cutting me out, and I think he had the impression that I wasn't very experienced, so didn't want to slow down for me although I was totally on top of what was going on.
# => We ended up taking much longer than necessary because we weren't in agreement on implementations, and I cancelled our second pairing session because I wasn't treated with respect for the first session and didn't want to be treated like that a second time. Fortunately, I sent him an email briefly explaining the situation and he came back with a very positive note, so we were able to clear the air quickly instead of railing on each other in our feedback and holding a grudge. This was a good learning experience for me, and validated what I assumed, that even though some people may underestimate my capabilities, possibly due to certain biases or stereotypes, they are not inherently bad people and often don't recognize their own assumptions. Starting a dialogue is more effective than getting mad and reciprocating the treatment.

#What new methods did you find to help you when you refactored?
# => Didn't implement any new methods but combined each_index and map together in a way that I hadn't used previously.
#What concepts or learnings were you able to solidify in this challenge?
#Whathile I have used the inject method before, I have usually used it to take a cumulative sum. In this method, I had to use inject(0) because my first sum couldn't simply equal the first element of the array, as there was some arithmetic manipulation that had to occur on the element first. Using the inject(0) method in this context finally clarified the purpose of inject(0), as I struggled a lot with this function when I was learning it on codeacademy.