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
 