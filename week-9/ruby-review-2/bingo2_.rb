 #Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode
#(horizontal) create a loop to access the first array then create a second loop to to check the sub_arrays, set counter = 0
#"x" if you got the number
#(vertical)
#set index = 0 and loop through them with an until to check if is less than 4, loop trough the bingo_scorer to check if 
#it has an x.
#right_to_left set a counter equal to 0 and loop through bingoscorer to check if the you got the same indexes replace 
#with an x



# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]




# Initial Solution
class BingoScorer

 def initialize(scorer)
  	@bingo_scorer = scorer
 end

 def horizontal 
 @bingo_scorer.each do |sub_arrays|
 	counter = 0
 		sub_arrays.each do |number|
 		 if number == "x"
 		counter += 1
 	  end
 	 end
 	 return true if counter == 5
 	end
 	return false
 end
 

def vertical 
index = 0
 until index  > 4 
	counter = 0
   @bingo_scorer.each do |sub_arrays|
		if sub_arrays[index] == "x"
		counter += 1
		end
	end
	index += 1
 return true if counter == 5
 end
end

def right_to_left
	counter = 0
	index = 0

 @bingo_scorer.each do |sub_arrays|
 	if @bingo_scorer[index][index] == "x"
 		counter += 1
 	 end
 	end
 return true if counter == 5
end

 def left_to_right
 counter = 0 
index = 0
	 @bingo_scorer.each do|sub_arrays|
	 	if @bingo_scorer[4-index][index] == "x"
	 	 counter += 1
	 	end
	 end
	 	return counter == 5
	end
 

def check_board
 if horizontal == true
 	puts "You got Bingo!"
 elsif vertical == true
 	puts "congrats you won"
 elsif  right_to_left == true
 	puts "Good job, Bingo!"
 elsif left_to_right == true
 	puts "WOhoo, bingo!"
 else
 	puts "not bingo , sorry"
 end
end
	
end




# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
horizontal = BingoScorer.new(horizontal)
horizontal.check_board
vertical = BingoScorer.new(vertical)
vertical.check_board
left_to_right = BingoScorer.new(left_to_right)
left_to_right.check_board
right_to_left = BingoScorer.new(right_to_left)
right_to_left.check_board


# Reflection

# What concepts did you review in this challenge?
#of how to get a - index since my method was not working
# What is still confusing to you about Ruby?
# I think I am still confuse about a lot of things of ruby but with the time I should get better at it
# What are you going to study to get more prepared for Phase 1?
#everything, to be much better at any of the methods.
