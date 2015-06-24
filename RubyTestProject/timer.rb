#This code could 100% be refactored a bit. Make a function and call that instead of my crazy nested if thens
class Timer
	attr_accessor :seconds

	def seconds
		@seconds = 0
	end

	def time_string 

		if @seconds < 10
			return "00:00:0#{@seconds}"

		elsif @seconds < 60 
			return "00:00:#{@seconds}"

		elsif @seconds < 600
			min = @seconds / 60
			sec = @seconds % 60
				if sec < 10 
					return "00:0#{min}:0#{sec}"
				else 
					return "00:0#{min}:#{sec}"
				end


		elsif @seconds < 36000
			hour = @seconds / 3600
			min = (@seconds % 3600) / 60
			sec = (@seconds % 3600) % 60

			if min < 10 
				if sec < 10 
					return "0#{hour}:0#{min}:0#{sec}"
				else 
					return "0#{hour}:0#{min}:#{sec}"
				end
			else 
				if sec < 10 
					return "0#{hour}:#{min}:0#{sec}"
				else 
					return "0#{hour}:#{min}:#{sec}"
				end
			end
		else
			hour = @seconds / 3600
			min = (@seconds % 3600) / 60
			sec = (@seconds % 3600) % 60

			if min < 10 
				if sec < 10 
					return "#{hour}:0#{min}:0#{sec}"
				else 
					return "#{hour}:0#{min}:#{sec}"
				end
			else 
				if sec < 10 
					return "#{hour}:#{min}:0#{sec}"
				else 
					return "#{hour}:#{min}:#{sec}"
				end
			end

		end

	end

end
