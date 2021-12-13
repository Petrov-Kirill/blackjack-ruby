module AlexanderKorepanov
  class Substring
    attr_reader :string, :dictionary

    def initialize(string: '', dictionary: [])
      @string = string
      @dictionary = dictionary
    end

    def found_word_entries
      return {} unless @string.is_a?(String) && @dictionary.is_a?(Array)

      dictionary.each_with_object(Hash.new(0)) do |word, words_entries_count|
        match_count = string.downcase.scan(word.downcase).count
        words_entries_count[word] = match_count if match_count.positive?
      end
    end
  end
end
