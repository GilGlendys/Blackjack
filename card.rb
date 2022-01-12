#Card Class
class Card
  attr_accessor :face, :suit, :value

  def initialize(face, suit, value)
    @face = face
    @suit = suit
    @value = value
  end

  # generates a new card from the deck
  # takes a parameter "player" and adds to that player's hand
  def generate_card(player)
    new_card = Card.new face, suit, value
    player.hand << new_card
    # also updates the player's total (aka the hand value)
    player.total = player.total + new_card.value
  end
end
