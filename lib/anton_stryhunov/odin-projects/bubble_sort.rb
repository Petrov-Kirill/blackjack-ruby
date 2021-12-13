module AntStryhunov
  class BubbleSort
    attr_reader :input_array

    def initialize (input_array: [])
      @input_array = input_array.kind_of?(Array) ? input_array : []
    end

    def bubble_sort
      number_comparisons = input_array.length - 1
      number_unsorted_items = input_array.length - 2

      number_comparisons.times do
        input_array[0..number_unsorted_items].each_index do |index|
          if (index < number_comparisons) && (input_array[index] > input_array[index + 1])
            input_array[index], input_array[index + 1] = input_array[index + 1], input_array[index]
          end
        end
        number_unsorted_items -= 1
      end

      input_array
    end
  end
end
    