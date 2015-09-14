# I worked on this challenge [by myself, with: Julian Leese ].
def factorial(number)
  total = 1
  until number <= 1
  	total *= number
  	number -= 1
  end
  return total
end


# define factorial
# inside method set total = 1
# until number is less or equal than 1
# multiply the total times the number
#subtract number -= 1
# total = number + total
# number -= 1
# end while loop
# return total

#Reflection
#Writing a method is the cleaner way and perhaps the only way to do a lot in a code.
#You assigned any declaration to a local variable, or you can do empty strings to an empty array or hash.
#A method argument is either an array or hash depending of what are you looking for and it's important to have
#it on your method if you have to do either or.
#When you return a method it will return whatever the method is doing.
#When you loop through a hash or an array this means that you are looking for an specific key or number/string 
#but you have to get access to it that is way looping it's the best way to do it.
#I paired with Julian and we were both interacting a lot and learning of ways to make our code cleaner.
