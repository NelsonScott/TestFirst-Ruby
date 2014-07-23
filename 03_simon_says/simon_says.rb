def echo(str)
	return str
end

def shout(str)
	return str.upcase
end

def repeat(str, times=2)
	result = str
	i=1
	while i<times
		result += " "+str
		i+=1
	end
	return result
end

def start_of_word(str, num)
	if num == 1
		return str[0]
	end
	return str[0..num-1]
end

def first_word(str)
	arr = str.split
	return arr[0]
end

def titleize(str)
	arr = str.split
	arr[0] = arr[0].capitalize
	i = 1

	#make a list of 'little' words to check before capitalizing 
	little_words = ['the', 'over', 'and', 'of', 'for']
	while i<arr.length
		if !(little_words.include?(arr[i]))
			arr[i]= arr[i].capitalize
		end
		i+=1
	end
	return arr.join(" ")
end
