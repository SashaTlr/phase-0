# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Create a method to convert an integer to character in bingo
# Divide the integer by 100 to get an integer between 0 - 4, which corresponds to b,i,n,g,o
#
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
# Create an array of integers from 0 to 499 to represent the letters in bingo, where the first integer represents the letter column, and the last two integers represent 1 - 100. The last two integers will need to have a 1 added as it will count from 0 - 99.
# Shuffle the array to create a random sequence of numbers
# Pop off the first element of the array to get a random BINGO entry
# Translate the divisor to the appropriate letter using separate method
# The remainder + 1 is the number between 1 - 100

# Check the called column for the number called.
  #Input: A String
  #Extract the string and integer from the input argument as two separate variables
    #The string corresponds to the index of each nested array
    #Loop through the string index for each nested array and see IF the variable exists
    #If variable exists in bingo board modify index value to string X

# Display a column to the console
  #Input: Column ID
  #Print the integer of each array corresponding to the column ID index

# Display the board to the console (prettily)
  #print each column as a board

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_call_board = (0..499).to_a.shuffle!
    @bingo_call_column = nil
    @bingo_call_row = nil
  end

  def convert_integer_char(board_integer)
    bingo_column_hash = {0 => 'B', 1 => 'I', 2 => 'N', 3 => 'G', 4 => 'O'}
    bingo_column_hash[board_integer] #returns letter
  end

  def call
    call_number = @bingo_call_board.pop
    @bingo_call_row = call_number%100
    @bingo_call_column = call_number/100
    convert_integer_char(@bingo_call_column) + "#{@bingo_call_row}"

  end

  def check
    bingo_row_index = @bingo_board.transpose[@bingo_call_column].index(@bingo_call_row)
    if bingo_row_index.nil? == false
      p "Match"
      @bingo_board[bingo_row_index ][@bingo_call_column] = 'X'
    else
      p "No match"
    end
    print_bingo_card
  end

  def print_bingo_card
   p ["B", "I", "N", "G", "O"]
   @bingo_board.each{|x| p x}
  end

end


# Refactored Solution
class BingoBoard
  @@bingo_column_name = ["B","I","N","G","O"]

  def initialize(board)
    @bingo_board = board
    @bingo_call_board = (0..499).to_a.shuffle!
    @bingo_call_column = nil
    @bingo_call_row = nil
  end

  def call
    call_number = @bingo_call_board.pop
    @bingo_call_row = call_number%100 + 1
    @bingo_call_column = call_number/100
    p @@bingo_column_name[@bingo_call_column] + "#{@bingo_call_row}"
  end

  def check
    bingo_board_row_index = @bingo_board.transpose[@bingo_call_column].index(@bingo_call_row)
    if bingo_board_row_index.nil? == false
      p "Match"
      @bingo_board[bingo_board_row_index][@bingo_call_column] = 'X'
    else
      p "No match :("
    end
    print_bingo_card
  end

  def print_bingo_card
   p @@bingo_column_name
   @bingo_board.each{|x| p x}
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

40.times{
new_game.call
new_game.check
}

#Reflection