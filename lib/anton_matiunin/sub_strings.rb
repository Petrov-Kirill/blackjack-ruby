module AntonMatiunin
  class SubStrings
    attr_reader :input_string, :dictionary

    def initialize(input_string: '', dictionary: [])
      @input_string = input_string.to_s.downcase
      @dictionary = dictionary.to_a
    end

    def counter
      dictionary.each_with_object({}) do |word, words_hash|
        founded_words = input_string.scan(word).count
        words_hash[word] = founded_words if founded_words.positive?
      end
    end
  end
end
