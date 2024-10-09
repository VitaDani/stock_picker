# Random array of stock prices given by TOP
stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

# Function that will return the best day to buy and sell stocks with 0-based indexing
def stock_picker(daily_prices)
  max = 0
  min = 0
  max_diff = 0

  # Loop through the array (and index), comparing the criteria given by TOP, such as the day_to_buy occuring before the day_to_sell
  daily_prices.each_with_index {|min_price, day_to_buy|
    daily_prices.each_with_index {|max_price, day_to_sell|
      if (day_to_buy < day_to_sell) && ((max_price - min_price) > max_diff)
        max_diff = max_price - min_price
        max = day_to_sell
        min = day_to_buy
      end
    }
  }
  p [min, max]
  return [min, max]
end

stock_picker(stock_prices) # Loop the each_with_index functions