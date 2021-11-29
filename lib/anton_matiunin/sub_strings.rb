module AntonMatiunin
  class SubStrings
    attr_reader :input_string, :dictionary, :hash

    def initialize(input_string: '', dictionary: [], hash: {})
      @input_string = input_string.to_s.downcase
      @dictionary = dictionary.to_a
      @hash = Hash.new(0)
    end

    def counter
      dictionary.each do |word|
        hash[word] += input_string.scan(word).count if input_string.scan(word).count.positive?
      end

      hash
    end
  end
end
