#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.
#On release two and three , by adding attr_reader let's get the method that it's reading , which was age that is why 
#they were able to refactor that, then they also use attr writer to get the method that will be changing,
#release 4 is where they just use attr_accessor this does the job of the reader and the writer but instead of writing
#both lines you will just use accessor.

class NameData
	attr_reader :name
	def initialize
		@name = "Lucia"
	end

end


class Greetings
	def initialize
		@namedata = NameData.new
	end

 def greet
  puts "hello dear #{@namedata.name}!!"
 end

end

gets_name = Greetings.new
gets_name.greet

# Reflection
#I wrote this twice for better understating and figure what the code was doing and re read how to get the other class information
#after all I was able to understand what was going on , and write the code to get what I was looking for.