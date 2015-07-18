def bubble_sort_by(array)
temp = 1
loop do 
swapped = false
(array.length - 1).times do |i|
	if yield(array[i], array[i +1]) < 0 
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

puts bubble_sort_by(["hi","hello","hey"]) { |left, right| right.length - left.length }