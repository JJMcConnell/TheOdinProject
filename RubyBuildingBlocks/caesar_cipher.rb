def caesar_cipher (string, shift_factor)

	input = string.split(" ")
	output = ""

#loop for the number of words in the string times
	input.length.times do |i|
		
	#loop for the number of characters in current word
		input[i].length.times do |j|
		
		#The current character of the current word
			current_char = input[i][j]
			current_char = current_char.ord
			
		#Checks if the current char is a special character. If it is doesn't shift and moves on
			if current_char < 65
				output += current_char.chr
				next
			end

		#Turned to value and shifted
			shifted_char = current_char + shift_factor

		#These if thens handle the wrap-around so that it circles the alphabet instead of returning braces and other nonsense
			if ((current_char <= 90) && (shifted_char > 90))
				val = 90 - current_char
				altered_shift_factor = shift_factor - val - 1
				shifted_char = 65 + altered_shift_factor

			elsif ((current_char <= 122) && (shifted_char > 122))
				val = 122 - current_char
				altered_shift_factor = shift_factor - val - 1
				shifted_char = 97 + altered_shift_factor
			end

		#Back to a character
			new_char = shifted_char.chr
			output += new_char
		end
		output += " "
	end
	return output 
end

puts caesar_cipher("Hello there my dear friend how are you?" , 8)