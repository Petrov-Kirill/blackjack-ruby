module AntonMatiunin
  class Sub_strings
    attr_reader :input_string, :dictionary

    def initialize(input_string: 'below', dictionary: [])
      @input_string = input_string.to_s.downcase
      @dictionary = dictionary.to_a
    end

    def counter
       dictionary.each_with_object(hash=Hash.new(0)) do |word,hash|
        hash[word] += input_string.scan(word).count
      end
      hash.delete_if { |k, v| v == 0 }
    end
  end
end

