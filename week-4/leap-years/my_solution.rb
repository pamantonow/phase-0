# Leap Years

# I worked on this challenge [by myself, with: Celeste Carter].


# Your Solution Below
def leap_year?(year)
 if year % 400 == 0
 return true
 elsif year % 100 == 0
 return false
 elsif year % 4 == 0
 return true
 else
  return false
  end
 end
 
 #refactored solution
 
def leap_year (date)
 if (date % 4) == 0
 return true
 else 
 return false
 end
end
