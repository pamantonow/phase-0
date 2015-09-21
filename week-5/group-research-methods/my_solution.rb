# Research Methods

# I spent [] hours on this challenge.

# i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
# my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# # Person 1's solution
# def my_array_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #

# # Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# Person 3
def my_array_sorting_method(source)
  words = []
  numbers = []
  source.each do |element|
    if element.is_a?(String)
     words << element
    end
  end
  source.each do |element|
    if element.is_a?(Integer)
      numbers << element
    end
  end
   numbers.sort! + words.sort! 
end

def my_hash_sorting_method(source)
  source.sort_by{|key,value| value} 
end
  


# Identify and describe the Ruby method(s) you implemented.
#
#
#


# # Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#    source.each do |letter|
#     if letter.to_s.include? thing_to_delete
#       source.delete(letter)
#     end
#    end
#  end

# def my_hash_deletion_method!(source, thing_to_delete)
#    source.each do |letter,value|
#     if letter.to_s.include? thing_to_delete
#       source.delete(letter)
#      end
#    end
# end

#Identify and describe the Ruby method(s) you implemented.
#loop through the array (on the array method) and for the hash loop through the hash pasing a key an value
#check if letter includes the thing to delete 
#and use .delete to delete from array
 




# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#Phew, all done with the group methods challenge! Now's your time to reflect. 

# What was your experience like researching for Ruby methods. Did you find them quickly? How easy was it to implement once you found one?
#I had use ruby docs before and I really like it becuase it's much easier to find ways to write the code
# Did you find any methods you thought would work but didn't? What made you think they would work? How did you determine they didn't?
#I did, specially with array and hashes becuase I thought it was going to work the same way.
