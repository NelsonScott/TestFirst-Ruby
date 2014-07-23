def reverser
	arr = yield.split(" ")
	arr.map!{|x| x.reverse}
	arr.join(" ")
end

def adder(value = 1)
	yield + value
end

def repeater(value =1)
	i=0
	if (value ==1)
		return yield
	else
		value.times do 
			yield
		end
	end
end
