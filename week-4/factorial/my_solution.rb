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