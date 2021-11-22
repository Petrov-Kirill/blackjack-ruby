module AntonMatiunin
  class CaesarCypher
    attr_reader :input_string, :shift

    def initialize(input_string: '', shift: 0)
      @input_string = input_string
      @shift = shift ? shift.to_i : shift = 0
    end

    def encrypt
      input_string.tr(alp=("a".."z").to_a.join, sh = ("a".."z").to_a.rotate(shift).join).tr(alp.upcase, sh.upcase)
    end
  end
end
