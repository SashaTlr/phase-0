# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
# Randomly select an integer between 0 to 4 to represent the letters in bingo, where 0 is b and 4 is o
# Randomly select an integer between 1 - 100


# Check the called column for the number called.
  #Convert the column number back to an array
  #Enter the array corresponding to the column
  #Check if the integer exists in that column
  #return array index if exists

# If the number is in the column, replace with an 'x'
  #If array index exists in bingo board modify index value to string X

# Display a column to the console
  #Input: Column ID
  #Print the integer of each array corresponding to the column ID index

# Display the board to the console (prettily)
  #print each column as a board

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end


end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection