module AntonMatiunin
  class StockPicker
    attr_reader :input_array

    def initialize(input_array: [3, 5, 67, 8, 9, 0])
      @input_array = input_array ? input_array.to_a : input_array = []
    end

    def stock_picker
      max_profit = 0
      perfect = []
      input_array.each_with_index do |buy_price, buy_day|
        input_array.each_with_index do |sell_price, sell_day|
          if sell_price - buy_price > max_profit && sell_day > buy_day
            max_profit = sell_price - buy_price
            perfect[0] = buy_day
            perfect[1] = sell_day
          end
        end
      end
      perfect
    end
  end
end
