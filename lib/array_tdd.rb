# require 'byebug'

class Array
  def my_uniq
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end
    result
  end

  def two_sum
    result = []
    self.each_with_index do |el_1,idx_1|
      self.each_with_index do |el_2,idx_2|
        if el_1 + el_2 == 0
          result << [idx_1,idx_2].sort unless idx_1 == idx_2 || result.include?([idx_1,idx_2].sort)
        end
      end
    end
    result
  end
end


def my_transpose(array)
  result = []
  array.each_with_index do |row, idx_1|
    temp = []
    row.each_with_index do |el, idx_2|
      #debugger
      temp << array[idx_2][idx_1]
    end
    result << temp
  end
  result.each do |row|
    p row
  end
end

p my_transpose([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ])

def stock_picker(prices)
  profit = 0
  answer = [0,0]
  prices.each_with_index do |buy_price, buy_date|
    prices.each_with_index do |sell_price, sell_date|
      diff = sell_price - buy_price
      if diff > profit
        profit = diff
        answer = [buy_date, sell_date] unless sell_date < buy_date
      end
    end
  end
  answer
end

p stock_picker([10,12,9,16,20,10,11])
