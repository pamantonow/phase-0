# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:Integer
# Output:returns a symbol
# Steps:
# Create a method called guess, that takes as argument guess and will check if the guess is greater than answer
#or if is equal to the answer
#def a new method called solved? that will check if the new  guess is equal to the answer it will return otherwise
#false

# Initial Solution

class GuessingGame
  def initialize(answer)
   @answer = answer
   @guess = nil
  end

  def guess(guess)
  	@guess = guess
  	if guess > @answer
  		return :high
  	 elsif guess == @answer
  		return :correct
  	else
  		return :low
  	end
  end

  def solved?
  	if @guess == @answer
  		return  true
  	else
  	 return false
   end
  end
 end

make_guess = GuessingGame.new(6)
p make_guess.guess(3) == :low
p make_guess.guess(6) == :correct
p make_guess.solved? == true
p make_guess.guess(7) == :high
p make_guess.solved? == false 



  # Make sure you define the other required methods, too





# Refactored Solution

#It's alread refactored enough.




# Reflection
#doing driver test still a little bit complicated but hopefully with the practice I could understand it more
#other than that writing the code was a bit easier this time , since I had a better understanding of what I have to do.
