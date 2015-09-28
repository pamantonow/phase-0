# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:array of numbers
# Output:a valid credit card
# Steps:
#

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits


#  class CreditCard

#   def initialize(number)
#     @number=number.to_s.split("")
#      raise ArgumentError if @number.length != 16 #.new("Card Must Contain 16")
#   end

#   def digit_double
#     array_nums = @number.map{|num| num.to_i}
#     @double = []
#     array_nums.reverse.each_with_index do |element, index|
#      if index.odd?
#        @double << element * 2 
#      else
#        @double << element
#      end
#     end
#   end

#   def check_card
#     digit_double
#     sum = @double.inject do |sum, num|
#        if num < 10
#          sum + num
#        else
#          split = num.to_s.split("")  # if num = 15 then => [1, 5]
#          sum + split[0].to_i + split[1].to_i
#        end
#       end
#     if sum % 10 == 0
#       return true
#     else
#       return false
#     end
#   end
# end




# Refactored Solution

class CreditCard

  def initialize(number)
    @number=number.to_s.split("").map{|num| num.to_i}
     raise ArgumentError if @number.length != 16 #.new("Card Must Contain 16")
  end

  def digit_double
    
    @number.reverse.each_with_index do |element, index|
      @number[index] = element.to_i
     if index.odd?
      @number[index]= element * 2 
    
     end
    end
  end

  def check_card
    digit_double
    sum = 0
     @number.each do |num|
      if num < 10
        sum += num
       else
        split = num.to_s.split("")  # if num = 15 then => [1, 5]
        sum += split[0].to_i + split[1].to_i
       end
      end
    return  sum % 10 == 0
  end
end






# Reflection
# What was the most difficult part of this challenge for you and your pair?
#I guess the fact I was trying to use other methods to learn more since my pair was more advance than I was
# What new methods did you find to help you when you refactored?
#I have been trying to figure out what is inject, I did research and still nothing, on the first solution my pair decided
#to use .inject and in the refactor I used methods that I understand the most which is .each 
# What concepts or learnings were you able to solidify in this challenge?
#that indexes has a lot of functions