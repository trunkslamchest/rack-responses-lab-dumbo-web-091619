class Application

	def call(env)
		resp = Rack::Response.new
		# time_test = Time.new.hour

		if Time.new.hour < 12
			resp.write "Morning"
		end
		
		if Time.new.hour > 12
			resp.write "Afternoon"
		end

		resp.finish
	end

end