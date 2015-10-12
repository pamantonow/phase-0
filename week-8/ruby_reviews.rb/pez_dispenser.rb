# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode



# Initial Solution


class PezDispenser

  def initialize(array_of_pez)
    @pez = array_of_pez
    p @pez
  end 
  
  def add_pez(new_pez)
    @pez << new_pez
    
  end
  
  def see_all_pez
    @pez
  end
  
  def pez_count
    p @pez.length
  end
  
  def get_pez
    p @pez[-1]
  end 
  
  
  
  
  end
end



# Refactored Solution


# What concepts did you review or learn in this challenge?
#I reviewed again enumerables to access them
# What is still confusing to you about Ruby?
#there is things that are still confusing for me that I have to study more
# What are you going to study to get more prepared for Phase 1?
#enumerables , classes probably everything again



# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection