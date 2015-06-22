
def check_if_prime (number)
	(2...number).step(1) do |i|
		if number % i == 0
			return false
		else
			return true
		end
	end
end

def largest_prime (number)
	divisor = number - 1

	while divisor > 1 do
		if ((number % divisor == 0) && check_if_prime(divisor))
			return divisor
		end
		divisor = divisor - 1
	end
	return number
end

puts largest_prime(1123123)