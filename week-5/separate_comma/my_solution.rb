# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a number 
# What is the output? (i.e. What should the code return?) A string with a number an a comma in there.
# What are the steps needed to solve the problem?
#Define a method that takes an array of numbers
#add a comma every third digit counting backward
#Loop through the index and check if index reminder of 3 is equal to 0


# 1. Initial Solution
def separate_comma(number) 
	array = number.to_s.reverse.split("")
	 array.each_with_index do |num,index|
	  if index % 3 == 0
	  	array[index] = "," + num
	  end
	 end
	array = array.join("").reverse
	array.chomp(",")
 end


# 2. Refactored Solution



# 3. Reflection
#Being able to work more with ruby had help to think more about the methods and how I am going to write 
#them specially since I had study a lil bit more to understanding on this challenge, I got a better used of
#each with index and , I became much better at doing it.