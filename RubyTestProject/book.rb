class Book
	attr_accessor :title

	def title= (title)
		title.capitalize!
		word_exceptions = ["the", "a", "an", "and", "in", "of"]
		@title = title.split(" ").map {|word|
			if word_exceptions.include?(word)
				word 
			else
				word.capitalize
			end
		}.join(" ")
	end
	
end