module AntonMatiunin
  class BubbleSort
    attr_reader :input_array

    def initialize(input_array: [])
      @input_array = input_array.to_a
    end

    def bubble_sort
      (input_array.length.to_i).times do
        input_array.each_index do |i|
          if i < input_array.length - 1 && input_array[i] > input_array[i + 1]
            input_array[i], input_array[i + 1] = input_array[i + 1], input_array[i]
          end
        end
      end
      input_array
    end
  end
end
