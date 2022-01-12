#Player Class - creates a ne player
class Player
  attr_accessor :name, :hand, :bankroll, :total

  def initialize(name, hand, bankroll, total)
    @name = name
    @hand = []
    @bankroll = bankroll
    @total = total
  end
end
