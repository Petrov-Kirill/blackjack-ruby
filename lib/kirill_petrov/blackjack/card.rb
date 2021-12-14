module BlackJack
  class Card
    attr_reader :suit, :type

    def initialize(suit, type)
      @suit = suit
      @type = type
    end
  end
end
