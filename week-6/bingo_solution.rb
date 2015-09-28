# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Define a method that takes an argument 
  #loop through the words to randomly pick a letter.
  #loop through the number from 1 - 100 to randomly pick a number and replace with a letter x.
  #check if the letter contains the number then replace with an "X"

# Check the called column for the number called.
  #with an if statement check if a letter contains the index

# If the number is in the column, replace with an 'x'
#loop through the bingo board using , check if the bingo board contains the number
#replace with an x.

# Display a column to the console
  #loop inside the array and add a space everytime it loops, use print to create
  #a new line to display

# Display the board to the console (prettily)
  #fill in the outline here
  #Pseudocode


# Initial Solution

class BingoBoard
 def initialize(board)
  @bingo_board = board
  end

   def create_letter(letters,numbers)
    return [letters.sample,numbers.sample]
  end
  
  def column(letter,number)
    if letter == "b"
    column_index = 0
   elsif letter == "i"
    column_index = 1
   elsif letter == "n"
    column_index = 2
  elsif letter == "g"
    column_index = 3
  else letter == "o"
    column_index = 4
  end

  @bingo_board.each_with_index do |sub_array|
   if sub_array[column_index] == number
     sub_array[column_index] = "X"
   end
  end
 end

  def print_board
    @bingo_board.each do |sub_array|
      puts ""
     sub_array.each do |number|
      print number.to_s + " "
     end
    end
  end

  
     
    


end

# Refactored Solution
class BingoBoard
 def initialize(board)
  @bingo_board = board
  end

   def create_letter(letters,numbers)
    return [letters.sample,numbers.sample]
  end
  
  def column(letter,number)
    case letter.downcase
    when  "b"
    column_index = 0
     when  "i"
    column_index = 1
     when  "n"
    column_index = 2
    when "g"
    column_index = 3
  else "o"
    column_index = 4
  end

  @bingo_board.each_with_index do |sub_array|
   if sub_array[column_index] == number
     sub_array[column_index] = "X"
   end
  end
 end

  def print_board
    @bingo_board.each do |sub_array|
      puts ""
     sub_array.each do |number|
      print number.to_s + " "
     end
    end
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
letters = ["b","i","n","g","o"]
numbers = [] 
i = 0
while i  < 100 
  i = i + 1 
  numbers << i
end 
letter_number = new_game.create_letter(letters,numbers)
new_game.column("o",88)
new_game.print_board


#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
#when writing pseudocode it's a little bit easier to translate the code and get into the challenge.
# What are the benefits of using a class for this challenge? The benefit was to keep everything nice and clean also it's very
#practical.
# What methods did you use to access and modify the array?
#loops was the best way to access an array and creating new ones helped.

