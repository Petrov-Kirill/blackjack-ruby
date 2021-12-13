module AlexanderKorepanov
  class StockPicker
    attr_reader :prices

    def initialize(prices: [])
      @prices = prices
    end

    def pick
      return [] unless prices.is_a?(Array)

      max_profit = 0

      prices.each_with_object([]) do |buy_price, best_deal_days|
        buy_day = prices.index(buy_price)

        prices[buy_day + 1..].each_with_index do |sell_price, sell_day|
          current_profit = sell_price - buy_price

          next unless current_profit > max_profit

          max_profit = current_profit
          best_deal_days[0] = buy_day
          best_deal_days[1] = sell_day + buy_day + 1
        end
      end
    end
  end
end
