module AntStryhunov
  class CaesarCypher
    attr_reader :input_string, :shift

    def initialize (input_string: ' ', shift: 0)
      @input_string = input_string.to_s
      @shift = shift.to_i
    end

    def encrypt
      downcase_alphabet = ('a'..'z').to_a
      uppercase_alphabet = ('A'..'Z').to_a

      full_alphabet = (downcase_alphabet + uppercase_alphabet).join
      rotate_alphabet = (downcase_alphabet.rotate(shift) + uppercase_alphabet.rotate(shift)).join
      input_string.tr(full_alphabet, rotate_alphabet)
    end
  end
end

  
