module AntonMatiunin
  class CaesarCypher
    attr_reader :input_string, :shift, :alphabet

    def initialize(input_string: '', shift: 0, alphabet: [])
      @input_string = input_string
      @shift = shift.to_i
      @alphabet = [*'a'..'z', *'A'..'Z'].to_a
    end

    def encrypt
      input_string.tr(alphabet.join, alphabet.rotate(shift).join)
    end
  end
end
