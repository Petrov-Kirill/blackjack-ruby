module AlexanderKorepanov
  class CaesarCypher
    attr_reader :input_string, :shift

    def initialize(input_string: '', shift: 0)
      @input_string = input_string.to_s
      @shift = shift.to_i
    end

    def encrypt
      alphabet_downcase = ('a'..'z').to_a
      alphabet_upcase = ('A'..'Z').to_a

      input_string.tr(
        (alphabet_downcase + alphabet_upcase).join,
        (alphabet_downcase.rotate(shift) + alphabet_upcase.rotate(shift)).join
      )
    end
  end
end
