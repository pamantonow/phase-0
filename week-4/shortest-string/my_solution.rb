def shortest_string(list_of_words)
	return nil if list_of_words == []

	 list_of_words.min {|x,y| x.size <=> y.size}
end