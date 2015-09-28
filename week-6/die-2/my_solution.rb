
# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:An array of strings as input
# Output:returns one of the strings randomly as an output

# Steps:


# Initial Solution


class Die
  def initialize(labels)
  	@labels= labels
  	 if labels == []
  	 	raise ArgumentError.new("should not be empty")
  	end
  end

  def sides
  	return @labels.length
  end

  def roll
  	return @labels[rand(@labels.length)]
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides == 6
p die.roll.kind_of?(String)



# Refactored Solution



class Die
  def initialize(labels)
  	@labels= labels
  	 if labels == []
  	 	raise ArgumentError.new("should not be empty")
  	end
  end

  def sides
  	return @labels.length
  end

  def roll
  	return @labels[rand(sides)]
  end
end




# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
#In this challenge I had to check for the length of the labels, which in the first die we didn't need.
# What does this exercise teach you about making code that is easily changeable or modifiable? 
#I just taught me how to write code more readable 
# What new methods did you learn when working on this challenge, if any?
#I learned that you can also check the rand and sides by usin square brackets you can add it together.
# What concepts about classes were you able to solidify in this challenge?
#Writing test became much easier in this challenge.
