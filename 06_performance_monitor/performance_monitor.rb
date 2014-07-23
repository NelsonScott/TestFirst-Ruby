def measure(num = 1)
	arr =[]
	
	num.times {
		time1 = Time.now
		yield
		time2 =Time.now	
		arr.push(time2-time1)
	}
	sum = 0
	arr.each do |i|
		sum+=i
	end

	elapsed_time = sum/num
end
