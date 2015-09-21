# Pad an Array

# I worked on this challenge [by myself, with:Jamie Ruyan]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? A destructive method and non destructive method, each method accepts an array , and a 
#min size of an array non minimum size
# What is the output? (i.e. What should the code return?) if the array's length is less than the minimum size, #
#pad should return a new array padded with the pad value up to the minimum size.
# What are the steps needed to solve the problem?
#(destructive)check with an if statement the length of the array using .length
#using &&  compare if the length  it's  less than minimum size , return the array.



# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
 if array.length >= min_size && array.length >= 0 
 	 return array
 	 else  array << value 
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new(array)
  if new_array.length >= min_size && new_array.length >= 0
  	return new_array
		else 
		until new_array.length >= min_size
			new_array << value
		end
		return new_array
  end
end
     


# 4. Reflection

# Were you successful in breaking the problem down into small steps?
#I had a little bit of issued but putting thought to it I was able to do it,
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#I found myself writing and perhaps doing something a little bit different that what I wrote but then I changed it
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#it was succesful the second one it was only syntax errors, that we forgot a letter on the code
# When you refactored, did you find any existing methods in Ruby to clean up your code?
#I didn't find a way to refactor
# How readable is your solution? Did you and your pair choose descriptive variable names?
#it was pretty readable , and we picked variables that will make sense
# What is the difference between destructive and non-destructive methods in your own words?
#a destructive method won't change the original method while the non-destructive one will change the original one