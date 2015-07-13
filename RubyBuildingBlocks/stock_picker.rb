def stock_picker(array)

	price_bought = 0
	high_index = 0
	profit = 0
	profit_array = []
	buy = 0
	sell = 0
	max_profit = 0

	(array.size - 1).times do |i|
		
		price_bought = array[i]

		(array.size - 1 - i).times do |j|
			j = j + i
			temp_profit = (array[j].to_i - price_bought.to_i)

			if (temp_profit > profit)
				profit = temp_profit
				high_index = j
			end
		end
		profit_array << [i, high_index, profit]
		profit = 0 
	end 

	profit_array.size.times do |i|

		if ((profit_array[i][2]) > max_profit)
			max_profit = profit_array[i][2]
			buy = profit_array[i][0]
			sell = profit_array[i][1]
		end
	end
		return "Buy on day " + buy.to_s + " and sell on day " + sell.to_s + " for a profit of " + max_profit.to_s 
end

stock_picker([17,3,6,9,15,8,6,1,10])