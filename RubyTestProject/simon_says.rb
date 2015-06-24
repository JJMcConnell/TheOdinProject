def echo (string)
	return (string)
end

def shout (string)
	return string.upcase
end

def repeat (string, times = 2) 
	return ([string] * times).join ' '
end

def start_of_word (string, number = 1)
	return string[0, number]
end

def first_word (string)
	string.split[0]
end

#The titleize function I couldn't figure out so I found a working answer on stack overflow 
#Here: http://stackoverflow.com/questions/15078964/ruby-titleize-how-do-i-ignore-smaller-words-like-and-the-or-etc
def titleize (string)
string.capitalize!  # capitalize the first word in case it is part of the no words array
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
    phrase = string.split(" ").map {|word| 
        if words_no_cap.include?(word) 
            word
        else
            word.capitalize
        end
    }.join(" ") # I replaced the "end" in "end.join(" ") with "}" because it wasn't working in Ruby 2.1.1
  phrase  # returns the phrase with all the excluded words
end
