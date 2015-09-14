list_of_numbers= [2,3,4,5]
def smallest_integer(list_of_numbers)
return nil	if list_of_numbers == []
 
 list_of_numbers.sort!
  return list_of_numbers[0]
end

