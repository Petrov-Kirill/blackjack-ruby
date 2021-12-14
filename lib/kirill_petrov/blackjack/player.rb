module BlackJack
  class Player
    attr_accessor :money, :hand, :name, :deck

    def initialize(name, deck)
      @name = name
      @deck = deck
      @money = 100
      @hand = []
    end

    def pick_a_card
      hand << @deck.deck.shift
    end

    def puts_money
      puts "#{name}, balance: #{money}"
    end

    def print_hand
      print "#{name}'s hand: "
      hand.each { |card| print "#{card.type}#{card.suit} " }
      puts
    end

    def count_the_value
      total = 0
      hand.each do |card|
        if card.type != 'A'
          total += @deck.values[card.type]
        elsif card.type == 'A' && total > 10
          total += @deck.values[card.type][0]
        elsif card.type == 'A' && total < 11
          total += @deck.values[card.type][1]
        end
      end
      total
    end
  end
end
