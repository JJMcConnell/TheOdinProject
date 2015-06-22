current_term = 0
sum = 2
n = 1
n_plus_one = 2
nnext = 0

while current_term <= 4000000 do 

	nnext = n + n_plus_one
	n = n_plus_one
	n_plus_one = nnext
	current_term = nnext

	if current_term % 2 == 0 
		sum += current_term
	end
end

puts sum