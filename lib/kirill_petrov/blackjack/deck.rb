module BlackJack
  class Deck
    attr_reader :deck, :values

    def initialize(num_of_decks)
      suits = %w[♣ ♦ ♥ ♠]
      types = %w[A 2 3 4 5 6 7 8 9 10 J Q K]
      @values = {
        'A' => [1, 11],
        '2' => 2,
        '3' => 3,
        '4' => 4,
        '5' => 5,
        '6' => 6,
        '7' => 7,
        '8' => 8,
        '9' => 9,
        '10' => 10,
        'J' => 10,
        'Q' => 10,
        'K' => 10
      }
      @deck = []
      # two decks is default for 2 players(if 6 players = 8 decks I suppose)
      num_of_decks.times do
        suits.each do |suit|
          types.each do |type|
            deck << Card.new(suit, type)
          end
        end
      end
      @deck.shuffle!
    end

    def deck_ends
      initialize(8)
    end
  end
end
