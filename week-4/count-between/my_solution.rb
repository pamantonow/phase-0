
def count_between(num_of_integers,lower_bound,upper_bound)
	counter = 0
	num_of_integers.each do |x|
		if x >= lower_bound && x <= upper_bound
			counter += 1
		end
	end
	return counter
end