#Implement a method #substrings that takes a word as the first argument and 
#then an array of valid substrings (your dictionary) as the second argument. 
#It should return a hash listing each substring (case insensitive) that was found in 
#the original string and how many times it was found.

def substrings (words, array)

	#makes the hash, makes the string case insensitive, and then splits the string 
	#into an array of the individual words
	occurances = Hash.new 0
	words.downcase!
	word_list = words.split(" ")

#For each word in the string
	word_list.each do |word|
	#For each word in the dictionary
		array.each do |dictionary|
			#Check if the word in the string contains the dictionary word, if it does increment hash
			if word.include?(dictionary)
				occurances[dictionary] += 1
			end

		end

	end
	 occurances
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)