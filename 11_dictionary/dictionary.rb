class Dictionary
	
	def initialize
		@entries = {}
	end

	def add(entry)
		if entry.class == String
			@entries[entry] = nil
		else
		
			entry.each {
				|key, value|
				@entries[key]=value
			}
		end
	end

	def entries
		return @entries
	end

	def keywords 
		return @entries.keys.sort
	end

	def include?(keyword)
		return @entries.has_key?(keyword)
	end

	def find(prefix)
		output = {}
		@entries.each do |key,value|
			if prefix == key[0..prefix.length-1]
				output[key] = @entries[key]
			end
		end
		return output
	end

	def printable
		str=""
		keys = keywords
		firstTime = true
		keys.each {
			|key|
			if firstTime
				str+="[#{key}] \"#{@entries[key]}\""
				firstTime = false
			else
				str+= "\n[#{key}] \"#{@entries[key]}\""
			end
		}
		return str
	end
end

