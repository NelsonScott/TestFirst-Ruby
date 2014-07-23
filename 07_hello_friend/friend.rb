class Friend
	def greeting(who= nil)
		if who != nil
			return "Hello, #{who}!"
		else
			return "Hello!"
		end
	end
end
