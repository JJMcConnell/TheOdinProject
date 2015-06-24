def reverser
	#I thew up when I read this solution, not my own. If I could make shit like this on my own
	#I wouldn't be taking this course
	yield.split(/\s+/).map{|w|wl=w.length-1;(0..wl).map{|i|w[wl-i]}.join}.join(' ')
end

#I did these ones though and damn ruby is pretty cool. Look how sparkling clean that code is
def adder (amount = 1)
	yield + amount	
end

def repeater (amount = 1)
	amount.times do 
		yield
	end
end

