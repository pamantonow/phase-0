# 0. Pseudocode

# Input:list of 19 names
# Output:3 groups of four and one of 5
# Steps:
#Define a method that takes an argument.
#Create an array that includes the 19 names. 
#Loop through the array , selecting every 4th name.
#Print each array newly created array. 
#Print the changed  of the original array.

names = ["Aji Slater","Farman Pirzada","Jamie Runyan","Lauren Jin","Pamela Antonow", "Celeste Carter","George Warnbold","Joshua Monzon","Lauren Markzon","Regina Compton",
"Colin Razevich","Hana Worku","Julian Leese", "Marcus Davis","Richar Leo","David O'Keefe","Irina Renteria", "Kries Bies","Marvy Tagala"]
def cohort(names)
	group_one = names.slice!(2,4)
	p group_one
	group_two = names.slice!(1,4)
	p group_two
	group_three = names.slice!(2,4)
	p group_three
	group_four = names.slice!(1,5)
	p group_four
 end
 cohort(names)

 #refactored solution 
 names = [["Aji Slater","Farman Pirzada","Jamie Runyan","Lauren Jin"],["Pamela Antonow", "Celeste Carter","George Warnbold","Joshua Monzon"],["Lauren Markzon","Regina Compton",
"Colin Razevich","Hana Worku"],["Julian Leese", "Marcus Davis","Richar Leo","David O'Keefe"],"Irina Renteria", "Kries Bies","Marvy Tagala"]]
def cohort(names)
p names
end
cohort(names)
# What was the most interesting and most difficult part of this challenge?
#I had read before about slice and I used to be able to get the groups and it was fairly easy.
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
#a little bit but like always while you are already writting the code you ended up doing something else
# Was your approach for automating this task a good solution? What could have made it even better?
#I think the way I did it worked pretty good
# What data structure did you decide to store the accountability groups in and why?
#I used .slice becuase this lets you get a part of the array and create new groups for it.
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods
