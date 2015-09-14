#Define a method called total that takes an array as an argument,
#create a variable called total and set it equal to 0 
#iterate over the array using .each to get the numbers in the array
#set total = to total + .....
#return total
#end loop , and end method

def total(numbers)
 total = 0
 numbers.each do |num|
 total += num
 end
return total
end
 

#define a method called sentence_maker which takes an array of strings as argument
#set a variable called sentence equal to an empty string
#do word_list.each 
#sentence equals the sentece plus the word plus space
#end the loop
#capitalize the sentence
#removed the second to last index and return sentence follow by a period.


def sentence_maker(word_list)
 sentence = ""
 word_list.each do |word|
  sentence = sentence + word.to_s + " " 
 end
 sentence.capitalize!
 return sentence[0 ..-2] + "."
end 
