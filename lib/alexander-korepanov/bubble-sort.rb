module AlexanderKorepanov
  class BubbleSort
    attr_reader :input_array

    def initialize(input_array: [])
      @input_array = input_array
    end

    def bubble_sort
      return false unless input_array.is_a?(Array)

      last_index = input_array.length - 2

      last_index.times do
        0.upto(last_index) do |i|
          if input_array[i] > input_array[i + 1]
            input_array[i], input_array[i + 1] = input_array[i + 1], input_array[i]
          end
        end

        last_index -= 1
      end

      input_array
    end
  end
end
