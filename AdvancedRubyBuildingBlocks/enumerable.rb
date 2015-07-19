
module Enumerable 

	def my_each
		for i in self
			yield self[i]
		end
	end

	def my_each_with_index
		for i in self 
			yield (self[i], i)
		end
	end

	def my_select
		selected_array = []
		self.my_each {|i| selected_array << i if yield(i)}
		selected_array
	end

	def my_all?
		self.my_each {|i| return false if !yield(i) }
		true
	end

	def my_any?

		self.my_each {|i| return true if yield(i) }
		false
	end

	def my_none?
		self.my_each {|i| return false if yield(i) }
		true
	end 

	def my_count
		count = 0 
		self.my_each {|i| count += 1  if yield(i) }
		return count 

	end

	def my_map 
		mapped_array = []
		self.my_each {|i| mapped_array << yield(i)}
		mapped_array
	end

	def my_inject

	end

end
