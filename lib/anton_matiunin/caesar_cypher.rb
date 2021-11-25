module AntonMatiunin
  class CaesarCypher
    attr_reader :input_string, :shift

    def initialize(input_string: '', shift: 0)
      @input_string = input_string
      @shift = shift.to_i
    end

    def encrypt
      input_string.tr([*'a'..'z', *'A'..'Z'].to_a.join, [*'a'..'z', *'A'..'Z'].to_a.rotate(shift).join)
    end
  end
end
