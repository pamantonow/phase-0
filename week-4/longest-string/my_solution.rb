def longest_string(list_of_words)
	return nil if list_of_words == []
	 list_of_words.max {|a,b| a.size <=> b.size }
	end