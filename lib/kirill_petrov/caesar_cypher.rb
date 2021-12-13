# frozen_string_literal: true

module KirillPetrov
  class CaesarCypher
    attr_reader :input_string, :shift

    def initialize(input_string: '', shift: 0)
      @input_string = input_string.to_s
      @shift = shift.to_i
    end

    def encrypt
      downcase_alph = [*'a'..'z']
      upcase_alph = [*'A'..'Z']
      alphabet = [downcase_alph, upcase_alph].join
      shifted_alphabet = (downcase_alph.rotate(shift) << upcase_alph.rotate(shift)).join

      input_string.tr(alphabet, shifted_alphabet)
    end
  end
end
