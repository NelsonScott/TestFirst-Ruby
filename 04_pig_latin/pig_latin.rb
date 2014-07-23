def translate(word)
	arr = word.split

	vowels = ['a','e','i','o','u', 'y']
	i = 0
	while i<arr.length
		word = arr[i]

		#check if the first letter is a vowel
		if vowels.include?(word[0])
			arr[i] = word+'ay'
		else
			k=0
			consonants = ''
			while !(vowels.include?(word[k]))
				
				if (word[k] == 'q')
					if (word[k+1] =='u')
						consonants+= word[k..k+1]
						puts "Found consonants:" +consonants
						k+=2
					end
				else
					consonants+= word[k]
					k+=1
				end
			end
			arr[i] = word[k..word.length]+consonants+'ay'
		end
		i+=1
	end
	return arr.join(" ")
end
