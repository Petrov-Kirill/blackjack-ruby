# frozen_string_literal: true

module KirillPetrov
  class Substring
    attr_reader :input_string, :dictionary

    def initialize(input_string: '', dictionary: [])
      @input_string = input_string.to_s
      @dictionary = dictionary.to_a
    end

    def count_word
      dictionary.each_with_object({}) do |word, result_hash|
        counted_values = input_string.downcase.scan(word.downcase).count
        result_hash[word] = counted_values if counted_values.positive?
      end
    end
  end
end
