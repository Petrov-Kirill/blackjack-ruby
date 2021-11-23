module AntonMatiunin
  class StockPicker
    attr_reader :input_array

    def initialize(input_array: [3, 5, 67, 8, 9, 0])
      @input_array = input_array.to_a
    end

    def pick
      max_profit = 0
      time_machine = []
      input_array.each_with_index do |buy_price, buy_day|
        input_array.each_with_index do |sell_price, sell_day|
          if sell_price - buy_price > max_profit && sell_day > buy_day
            max_profit = sell_price - buy_price
            time_machine[0], time_machine[1] = buy_day, sell_day
          end
        end
      end
      time_machine
    end
  end
end
