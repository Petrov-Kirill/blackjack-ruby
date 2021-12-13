module VadymVykhodtsev
  class StockPicker
    attr_reader :input_array

    def initialize(input_array:)
       @input_array = input_array.to_a
    end

    def stock_picker_process
      return nil if input_array.empty?
    
      result = input_array[0..-2].each_with_index.with_object([]) do |(buy_value, index), result|
        highest_value = input_array[(index + 1)..].max
        highest_index = input_array.index(highest_value)
        result << [highest_value - buy_value, index, highest_index]
      end
      
      result.max.last(2)
    end
  end
end
