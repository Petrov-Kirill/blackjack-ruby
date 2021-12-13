# frozen_string_literal: true

module KirillPetrov
  class BubbleSort
    attr_reader :input_array

    def initialize(input_array: [])
      @input_array = input_array.to_a
    end

    def sort_array
      stop_index = input_array.length - 2
      stop_index.times do
        0.upto(stop_index) do |index|
          if input_array[index] > input_array[index + 1]
            input_array[index], input_array[index + 1] = input_array[index + 1], input_array[index]
          end
        end

        stop_index -= 1
      end

      input_array
    end
  end
end
