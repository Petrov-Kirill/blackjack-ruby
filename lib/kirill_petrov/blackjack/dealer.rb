module BlackJack
  class Dealer < Player
    MAX_CARDS_VALUE = 17
    attr_accessor :hand

    def initialize
      super('Dealer')
      @hand = []
    end

    def pick_a_card_if_less_than_17
      while count_the_value < MAX_CARDS_VALUE
        break if count_the_value > 21

        pick_a_card
      end
    end

    def turn
      2.times { pick_a_card }
      puts "Dealer's hand: #{hand[0].type}#{hand[0].suit} and *hidden*"
    end

    def print_hand
      print 'Dealers hand: '
      hand.each { |card| print "#{card.type}#{card.suit} " }
      puts
    end
  end
end
