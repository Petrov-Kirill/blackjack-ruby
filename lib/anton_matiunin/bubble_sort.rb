module AntonMatiunin
  class BubbleSort
    attr_reader :array

    def initialize(array: [3, 1, 2])
      @array = array ? array.to_a : array = []
    end

    def bubble_sort
      (array.length.to_i ** 2).times do
        array.each_index do |i|
          if array[i + 1] != nil and array[i] > array[i + 1]
            array[i], array[i + 1] = array[i + 1], array[i]
          end
        end
      end
      array
    end
  end

end
