module AntonMatiunin
  class SubStrings
    attr_reader :input_string, :dictionary

    def initialize(input_string: '', dictionary: [])
      @input_string = input_string.to_s.downcase
      @dictionary = dictionary.to_a
    end

    def counter
      dictionary.each_with_object(hash = Hash.new(0)) do |word, hash|
        hash[word] += input_string.scan(word).count if input_string.scan(word).count.positive?
      end
    end
  end
end

