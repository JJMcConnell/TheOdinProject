def bubble_sort(array)

temp = 1
loop do 
swapped = false
(array.length - 1).times do |i|
	if (array[i].to_i > array[i+1].to_i)
		temp = array[i]
		array[i] = array[i+1]
		array[i+1] = temp 

		swapped = true
	end
end

break if swapped == false
end

return array 
end

bubble_sort([4,3,78,2,0,2])