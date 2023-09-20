


def stock_picker(prices_array)

  max_profit = -Float::INFINITY
  days_array = [0,0]
    #loop through each item in array and compare to following items to calculate profit. If profit is higher update best day to buy (days_array)
    # i will be current buy day, j will be all following possible sell days
    prices_array.each_with_index do |item, i|
      (i + 1).upto(prices_array.length - 1) do |j|
        buy_price = prices_array[i]
        sell_price = prices_array[j]
        #in the case that there are multiple days that profits that are equal, choose the one with the lowest buy in
        if max_profit == -buy_price + sell_price && days_array[0] < i 
          days_array[0] = i
          days_array[1] = j  
        elsif max_profit < -buy_price + sell_price
          max_profit =  -buy_price + sell_price
          days_array[0] = i
          days_array[1] = j
        end
      end
      

    end
  return days_array
end
  
  p stock_picker([10, 9, 8, 7, 6])

  p stock_picker([17,3,6,9,15,8,6,1,10])

  p stock_picker([17,3,6,9,15,8,6,10,1])

 