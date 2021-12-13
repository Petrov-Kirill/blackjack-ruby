module MariiaPanasenko
  class StockPicker
    attr_reader :input_array

    def initialize(input_array: [])
      @input_array = input_array.to_a
    end

    def pick
      return nil if input_array.empty?

      profit = 0
      input_array.each_with_object([]) do |buy_day, best_profit|
        input_array[input_array.index(buy_day)..-1].each do |sell_day|
          current_profit = sell_day - buy_day
          next if profit > current_profit

          profit = current_profit
          best_profit[0] = input_array.index(buy_day)
          best_profit[1] = input_array.index(sell_day)
        end
      end
    end
  end
end
