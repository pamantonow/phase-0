# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Initialize witha number of sides
# Output:On initialize method it should raise the argument if is less than 1, 
#on the roll method it should return a random number, and sides method the number of sides.
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
  	@sides = sides
   if sides < 1
  raise ArgumentError.new("must be more than one side")
   end
  end

  def sides
   return @sides
  end

  def roll
   return 1 + rand(sides)
  end
end

die = Die.new(3)
die.sides
die.roll

# 3. Refactored Solution

#There is no way to refactor the solution since is already pretty refactored




# 4. Reflection
#while writing the method I had forgotten how to raise the error , I knew how to write but forgot if it was
#all capital so I had to look it up , also the first time I ran it I made the mistake of defining the 
#argumen method by using an instance of variable and my method wasn't running properly until I put this
#but other than it was pretty simple.
