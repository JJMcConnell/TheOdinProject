def caesar_cipher (string, shift_factor)

	input = string.split(" ")
	output = ""

#loop for the number of words in the string times
	input.length.times do |i|
		

	#loop for the number of characters in current word
		input[i].length.times do |j|
		

		#The current character of the current word
			current_char = input[i][j]
		#Turned to value and shifted
			current_char = current_char.ord + shift_factor
		#Back to a character
			new_char = current_char.chr
			puts new_char
			

			output += new_char

		end 

		output += " "

	end

	return output 
end

puts caesar_cipher("Hello Friend", 3)