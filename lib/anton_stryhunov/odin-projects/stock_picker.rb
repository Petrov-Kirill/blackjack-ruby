module AntStryhunov
  class StockPicker
    attr_reader :input_array

    def initialize (input_array: [])
      @input_array = input_array.kind_of?(Array) ? input_array : []
    end

    def stock_picker
      return if input_array.empty?

      result = input_array[0..-2].each_with_object([]) do |price, result|
        price_index = input_array.index(price)
        max_value = input_array[price_index+1..].max
        max_value_index = input_array.index(max_value)
        result.push([max_value - price, price_index, max_value_index])
      end

      result.max.last(2)
    end
  end
end
    