module AntonMatiunin
  class CaesarCypher
    attr_reader :input_string, :shift, :alphabet

    def initialize(input_string: '', shift: 0)
      @input_string = input_string.to_s
      @shift = shift.to_i
      @alphabet = [*'a'..'z', *'A'..'Z']
    end

    def encrypt
      input_string.tr(alphabet.join, ([*'a'..'z'].rotate(shift) << [*'A'..'Z'].rotate(shift)).join)
    end
  end
end
