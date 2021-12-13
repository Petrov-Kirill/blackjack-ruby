module VadymVykhodtsev
  class BubbleSort
    attr_reader :numbers

    def initialize(numbers: )
      @numbers = numbers.to_a
    end

    def bubble_sort_process
    number_iterations = numbers.length - 2
      number_iterations.times do
        (0..number_iterations).each do |i|
          if numbers[i] > numbers[i + 1]
            numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
          end
        end

        number_iterations -= 1
      end

      numbers
    end
  end
end
