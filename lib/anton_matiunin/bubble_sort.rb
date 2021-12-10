module AntonMatiunin
  class BubbleSort
    attr_reader :input_array

    def initialize(input_array: [])
      @input_array = input_array.to_a
    end

    def bubble_sort
      a=input_array.length-1
      input_array[0..a].each do
        (0..input_array.length - 2).each do |i|
          if input_array[i] > input_array[i + 1]
            input_array[i], input_array[i + 1] = input_array[i + 1], input_array[i]
          end
          a-=1
        end
      end

      input_array
    end
  end
end
