class Book
	def title
		@title
	end

	#check if word is in an array of words not to capitalize
	def title=(title)
		check = ["the", "a", "an", "and", "in", "of"]
		arr = title.split
		arr[0] = arr[0].capitalize
		arr.map! {|value| !(check.include?(value)) ? value.capitalize : value}
		@title = arr.join(" ")
	end
end
