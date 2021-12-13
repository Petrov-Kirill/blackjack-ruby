module VadymVykhodtsev
  class SubStrings
    attr_reader :string, :dictionary
  
    def initialize(string: , dictionary: )
      @string = string.to_s.downcase
      @dictionary = dictionary.to_a
    end

    def substring_process
      dictionary.each_with_object({}) do |word, result|
        numbers_words = string.scan(word).count
        result[word] = numbers_words if numbers_words.positive?
      end
    end
  end
end
