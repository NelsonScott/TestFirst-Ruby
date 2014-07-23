class Temperature
	def initialize(options = {})
		@options = options
	end
	
	def in_fahrenheit
		if @options.key?(:f)
			return @options[:f]
		elsif @options.key?(:c)
			value = (@options[:c]*9.0/5)+32
			return value
		else
			return nil
		end
	end

	def in_celsius
		if @options.key?(:c)
			return @options[:c]
		elsif @options.key?(:f)
			value = ((@options[:f]-32.0)*5.0)/9.0
		else
			return nil
		end
	end

	def self.from_celsius(num)
		self.new(:c => num)
	end

	def self.from_fahrenheit(num)
		self.new(:f=> num)
	end
end

class Fahrenheit < Temperature
	def initialize (num)
		@options= {:f => num}
	end

	def in_celsius
		super
	end

	def in_fahrenheit
		super
	end
end

class Celsius < Temperature
	def initialize(num)
		@options = {:c => num}
	end

	def in_celsius
		super
	end

	def in_fahrenheit
		super
	end
end