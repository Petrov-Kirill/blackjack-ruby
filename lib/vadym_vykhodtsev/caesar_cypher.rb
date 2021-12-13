module VadymVykhodtsev
  class CaesarCypher
    attr_reader :string, :shift

    def initialize(string:, shift:)
      @string = string.to_s
      @shift = shift.to_i
    end

    def encrypt
      letters = ([*'a'..'z'] + [*'A'..'Z']).join
      rotatted_letters = ([*'a'..'z'].rotate(shift) + [*'A'..'Z'].rotate(shift)).join
      encrypter = string.tr(letters, rotatted_letters)
    end
  end
end
