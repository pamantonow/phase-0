list_of_nums= [2,3,4,5]
def largest_integer(list_of_nums)
	return nil if list_of_nums == []

	list_of_nums.sort!
	return list_of_nums.last
end