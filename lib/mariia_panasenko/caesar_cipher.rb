module MariiaPanasenko
  class CaesarCypher
    attr_reader :input_string, :shift

    def initialize(input_string: '', shift: 0)
      @input_string = input_string.to_s
      @shift = shift.to_i
    end

    def encrypt
      alphabet = [*'a'..'z', *'A'..'Z'].join

      shifted_alphabet = ([*'a'..'z'].rotate(shift) << [*'A'..'Z'].rotate(shift)).join

      input_string.tr(alphabet, shifted_alphabet)
    end
  end
end
