class Array
	def sum
		sum = 0
		self.each {
			|value| 
			sum+= value
		}
		return sum
	end

	def square
		square = []
		if self.empty? 
			return self
		else
			self.each {
				|value|
				square.push(value*value)
			}
		end
		return square
	end

	def square!
		if self.empty?
			return self
		else
			self.map!{|value|
				value*value}
		end
		
		return self
	end
end