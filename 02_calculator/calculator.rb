def add (first, second)
	return first + second
end

def subtract (first, second)
	return first - second
end

def sum(arr)
	sum = 0
	while !(arr.empty?)
		sum += arr.pop
	end
	return sum
end

def multiply(arr)
	result = 1
	while !(arr.empty?)
		result *= arr.pop
	end
	return result
end

def power(first, second)
	return first**second
end

def factorial(num)
	result = 1

	#handle special case
	if num == 0
		return 1
	end

	while num != 1
		result *= num
		num = num-1
	end
	return result
end
