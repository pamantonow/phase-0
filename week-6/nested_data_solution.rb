# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

# array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# # attempts:
# # ============================================================
#p array[1][1][1]

#  p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

# hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # attempts:
# # ============================================================
#p hash[:outer][:inner][:almost][3]
# p hash[:outer][:inner]["almost"][3]


# # ============================================================


# # Hole 3
# # Target element: "finished"

# nested_data = {array: ["array", {hash: "finished"}]}

# # # attempts:
# # # ============================================================
# # p nested_data[:array][0][:hash]
# # p nested_data[:array][1]
# p nested_data[:array][1][:hash]



# # ============================================================

# # RELEASE 3: ITERATE OVER NESTED STRUCTURES

#  number_array = [5, [10, 15], [20,25,30], 35]
#  number_array.map! do |number|
#   if number.kind_of?(Array)
#  	 number.map! do |number|
#  	  number + 5
#  	  end
#  	else
#  	 number + 5
#  end
# end
# p number_array


# number_array.map! do |sum| 
#  if sum.kind_of?(Array) 
#  	sum.map! do |number|
#  	 number + 5 
#  	end
#  	else 
#  		sum + 5 
#  end  
# end
#  p number_array

# # Bonus:
# def print_triangle(rows)
#   columns = ""
#   rows.times do 
#     columns += "*" 
#     puts columns 
#   end 
# end

# print_triangle(0)

# end




startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
newnames = startup_names.flatten(3).each {|biz| print biz + "ly "} 
# 		names << name
# 	   end
# 	  end
# 	end
# 	p startup_names
