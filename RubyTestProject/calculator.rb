def add (num_one, num_two)
	return num_one + num_two
end

def subtract (num_one, num_two)
	return num_one - num_two
end

def sum (numbers)
	sum = 0

	if numbers.length > 0 then
		numbers.each do |i|
			sum += i 
		end
	end
	return sum 
end

def multiply (*numbers)
	return numbers.inject(1) {|result, num| result * num}
end

def power(number, exponent)
	return number ** exponent
end

def factorial(number)
	fact = 1
	new_num = number
	if (number == 0 || number == 1)
		return 1
	else
		(number - 1).times do 
			fact *= new_num
			new_num -= 1
		end 
	end
	return fact
end