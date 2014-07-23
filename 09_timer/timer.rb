class Timer
	attr_accessor :seconds
	def initialize
		@seconds = 0
	end

	def time_string
		# puts "Total seconds so far"+seconds.to_s
		hours = seconds/3600
		# puts "Hours: "+hours.to_s
		remaining = seconds-hours*3600
		# puts "Remaining: "+remaining.to_s
		minutes = remaining/60
		# puts "Minutes: "+minutes.to_s
		remaining = remaining-minutes*60
		seconds = remaining
		hours_str = padded(hours)
		minutes_str = padded(minutes)
		seconds_str = padded(seconds)

		return hours_str+":"+minutes_str+":"+seconds_str
	end


	

	# #helper method for formatting
	def padded(num) 
		if num.to_s.length <2
			return '0'+num.to_s
		else
			return num.to_s
		end
	end
end
