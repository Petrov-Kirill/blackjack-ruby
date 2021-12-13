module MariiaPanasenko
  class SubStrings
    attr_reader :input_string, :dictionary

    def initialize(input_string: '', dictionary: [])
      @input_string = input_string.to_s.downcase
      @dictionary = dictionary.to_a
    end

    def substrings
      dictionary.each_with_object({}) do |word, output_hash|
        counted_values = input_string.downcase.scan(/#{word}/).count
        output_hash[word] = counted_values if counted_values.positive?
      end
    end
  end
end
