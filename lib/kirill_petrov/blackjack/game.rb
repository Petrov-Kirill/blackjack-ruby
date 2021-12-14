module BlackJack
  class Game
    def initialize
      puts 'How many players playing?'
      num_of_players = gets.chomp.to_i
      @deck = Deck.new(8)
      @players = create_players(num_of_players)
      @dealer = Dealer.new('Dealer', @deck)
    end

    def play
      @deck.deck.shuffle!
      until @deck.deck.length == 0
        puts "Let's play BlackJack, shall we?\n\n"
        players_pick_cards
        @dealer.turn
        players_choice
        @dealer.pick_a_card_if_less_than_17
        @dealer.print_hand
        compare_sums_with_dealer
        play_again
      end
      @deck.deck_ends
    end

    private

    def bust?(player)
      player.count_the_value > 21
    end

    def compare_sums_with_dealer
      @players.each do |player|
        puts "#{player.name} value is [#{player.count_the_value}], dealer is [#{@dealer.count_the_value}]"
        if @dealer.count_the_value > 21
          puts 'Dealer BUSTED!!'
          puts 'Player win'
          player.money += @player_bet * 2
        elsif player.count_the_value > @dealer.count_the_value && !bust?(player)
          puts 'Player win'
          player.money += @player_bet * 2
        elsif player.count_the_value == @dealer.count_the_value
          puts "It's a draw"
          player.money += @player_bet
        else
          puts 'Dealer win'
        end
      end
    end

    def players_choice
      @players.each do |player|
        until bust?(player)
          puts "#{player.print_hand}(h)it or (s)tay? (h/s)"
          players_choice = gets.chomp.downcase
          case players_choice
          when 'h'
            player.pick_a_card
            player.print_hand
            puts "Player picked #{player.hand.last.type}#{player.hand.last.suit}, value of a hand is [#{player.count_the_value}]"
            if player.count_the_value > 21
              puts 'BUST'
              break
            end
          when 's'
            break
          else
            puts 'h or s only please'
          end
        end
      end
    end

    def players_pick_cards
      @players.each do |player|
        player.puts_money
        puts 'Your bet: '
        @player_bet = gets.chomp.to_i
        check_if_enough_money(player)
        player.money -= @player_bet
        2.times { player.pick_a_card }
        player.print_hand
        next unless player.count_the_value == 21 && player.hand.size == 2

        puts 'BLACKJACK!'
        player.money += @player_bet * 1.5
        puts 'Player win!'
      end
    end

    def create_players(num_of_players)
      players = []
      num_of_players.times do |i|
        players << Player.new("Player#{i + 1}", @deck)
      end
      players
    end

    def play_again
      puts 'Play again maybe? (y/n)'
      answer = gets.chomp.downcase
      case answer
      when 'y'
        @players.each { |player| player.hand = [] }
        @dealer.hand = []
        play
      when 'n'
        exit
      else
        puts 'Wrong argument'
        play_again
      end
    end

    def check_if_enough_money(player)
      if @player_bet > player.money
        exit if player.money == 0
        puts 'Not enough money, sorry'
        play_again
      end
    end
  end
end
