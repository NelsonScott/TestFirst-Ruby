class RPNCalculator
	attr_accessor :value
	def initialize
		@numbers = []
		@value = 0
	end

	def push(num)
		@numbers.push(num)
	end

	def plus
		if @numbers.length > 1
			@value = @numbers.pop + @numbers.pop
			@numbers.push(@value)
		else
			##For some reason the rspec code isn't picking this up as correct
			##But I tested it and it is being called correctly
			raise "calculator is empty"
		end
		return @value
	end
	def minus
		if @numbers.length > 1
			second = @numbers.pop
			first = @numbers.pop
			@value = first -second
			@numbers.push(@value)
		else
			raise "calculator is empty"
		end
		return @value
	end

	def divide
		if @numbers.length > 1
			second_num = @numbers.pop
			first_num = @numbers.pop
			@value = (first_num.to_f)/second_num
			@numbers.push(@value)
		else
			raise "calculator is empty"
		end
		return @value
	end

	def times
		if @numbers.length > 1
			@value = @numbers.pop*@numbers.pop
			@numbers.push(@value)
		end
		return @value
	end

	def tokens(str)
		arr = str.split
		arr.map!{|value| 
			if isInteger?(value)
				value.to_i
			else
				value.to_sym
			end
				}
	end

	def evaluate(str)
		token = tokens(str)
		while !token.empty?
			value = token.shift
			if value.class == Fixnum 
				@numbers.push(value)
			elsif value.to_s == '*'
				self.times
			elsif value.to_s == '+'
				self.plus
			elsif value.to_s == "-"
				self.minus
			elsif value.to_s == "/"
				self.divide
			end
		end
		return @value
	end

	def isInteger?(string)
		compare = string.to_i
		compare = compare.to_s
		return compare == string
	end
end
