module AntStryhunov
  class Substrings
    attr_reader :input_string, :dictionary

    def initialize (input_string: ' ', dictionary: [])
      @input_string = input_string.to_s
      @dictionary = dictionary.kind_of?(Array) ? dictionary : dictionary.to_s.split
    end

    def substrings
      dictionary.each_with_object({}) do |word, hash|
          word_count = input_string.downcase.scan(word.to_s).count
          hash[word] = word_count if word_count > 0
      end
    end
  end
end
