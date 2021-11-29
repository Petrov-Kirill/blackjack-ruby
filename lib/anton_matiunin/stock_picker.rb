module AntonMatiunin
  class StockPicker
    attr_reader :input_array, :best_days

    def initialize(input_array: [], time_machine: [])
      @input_array = input_array.to_a
      @best_days = []
    end

    def pick
      max_profit = 0
      input_array.each_with_index do |buy_price, buy_day|
        input_array.each_with_index do |sell_price, sell_day|
          if sell_day > buy_day && sell_price - buy_price > max_profit
            max_profit = sell_price - buy_price
            best_days[0], best_days[1] = buy_day, sell_day
          end
        end
      end

      best_days
    end
  end
end
