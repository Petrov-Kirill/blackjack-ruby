module AntonMatiunin
  class Sub_strings
    attr_reader :input_string, :dictionary

    def initialize(input_string: '', dictionary: ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])
      @input_string = input_string ? input_string.to_s : input_string = ""
      @dictionary = dictionary ? dictionary.to_a : dictionary = []
    end

    def substrings
      array_string = input_string.split
      count_hash = Hash.new(0)
      array_string.each do |word_from_string|
        dictionary.each do |dictionary_word|
          word_from_string.include?(dictionary_word) ? count_hash[dictionary_word] += 1 : nil
        end
      end
      count_hash
    end
  end
end

