# Your Names
# 1)Celeste carter
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)#two arguments , item to make order quantity 
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}# creating a hash called library, 
  #the item to make it's the key and the qty the problem
  error_counter = 3#define a variable cable and set it equal to three.

  library.each do |food| #iterating over the hash library 

    if library[food] != library[item_to_make]#we are checking if the library is not equal to the value .
      p error_counter += -1 #printing error counter - 1
    end
  end

  # if error_counter > 0#if error counter is greater   than 0 we raise the argument
  #   raise ArgumentError.new("#{item_to_make} is not a valid input")
  # end

  
      

  serving_size = library.values_at(item_to_make)[0]#set a variable called serving size
  #equal to library.values at to get the values , and get item and index
  serving_size_mod = order_quantity % serving_size#it sets a variable and set it equal to order quantity remainder of serving size.

#   case serving_size_mod
#   when 0
  if serving_size_mod == 0#if serving size is equal to 0 then return the calculations complete
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: #TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)



#  Reflection
#   What did you learn about making code readable by working on this challenge?
#I learned that by trying to understand what every line is doing it will make it more clear of what is going on before refactoring
# Did you learn any new methods? What did you learn about them?
#I did!, in fact I always thought that values_at it was to get just the values of the hash it returns in an array format
#I was pretty confused about that since always on my understanding it was just the values.
# What concepts were solidified when working through this challenge?
#things from hashes to refactoring and learning how to make it work.
