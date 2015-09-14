def valid_triangle?(a,b,c)
	if a + b <= c
		return false
	elsif b + a <= c
		return false
	elsif c + a <= b
		return false
	elsif c + b <= a
	return false
 else 
 	return true
 end
end