
# What is the input? array 
# What is the output? the most frequest values 
# What are the steps needed to solve the problem?
#Define the method, calling it mode. It'll pass in an array as an argument. 
# Create variable called max = 1
# Create a hash to store the items in the mode 
# Iterate over the array to find the mode
# IF the hash has a key then we can add one to the value. If it doesn't have a key in the hash then we still
#have to add one. 
# end the method 

#initial solution
def mode(numbers)
 counts = {}
 numbers.each do |num|
  if counts.has_key?(num)
   counts[num] = counts[num] + 1
   else
  counts[num] = 1
  end
 end

 num_list = counts.values
 highest_count = num_list.max

 modes = []
 counts.each do |key, count|
  if count == highest_count
   modes.push(key)
  end
 end
 return modes
end

#refactored solution
def mode(numbers)
  max = 1   
  hash = Hash.new(0)
  numbers.each do |num|
    hash[num] += 1
   end
max = hash.values.max
new_hash=hash.select { |k,v| v >= max }
new_hash.keys
end
#  Which data structure did you and your pair decide to implement and why?
#we decided to use new arrays and hashes and push everything to be able to know what is going on
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
#it was a little harder for this since this challenge was a little more complicated than the pad an array.
# What issues/successes did you run into when translating your pseudocode to code?
#we actually had just a letter mistake that we forgot in our code but everything was pretty ok!
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
