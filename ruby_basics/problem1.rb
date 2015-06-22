def multiply_three_and_five
	sum = 0;
	1000.times do |i|
		if (i % 3 == 0 )
			sum += i 
		

		elsif (i % 5 == 0 )
			sum += i 
		end
	end
	return sum
end
puts multiply_three_and_five
		
