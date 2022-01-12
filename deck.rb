#Deck - create a random deck of 52 playing cards
require "./card"

class Deck
  def initialize
    #create an array of face values, suits and an empty array for cards
    @faces = [*(2..10), "Jack", "Queen", "King", "Ace"]
    @suits = ["clubs", "spaces", "hearts", "diamonds"]
    @cards = []

    # loop through each face
    # then loop through each suit for that face
    # to generate 1 of every combo
    @faces.each do |face|
      # if face is a number make value = face
      if face.class == Integer
        value = face
        # if face is an Ace make value = 11
      elsif face == "Ace"
        value = 11
        # Otherwise we have a face card that has a value 10
      else
        value = 10
      end
      @suits.each do |suit|
        @cards << Card.new(face, suit, value)
      end
    end
    # shuffles the array of cards
    @cards.shuffle!
  end

  # now create a function within the Deck class
  # to deal the correct number of cards
  def deal(num, player)
    # the shift method "removes a card from the deck"
    # basically it removes it from the deck array and returns the value
    num.times { @cards.shift.generate_card(player) }
  end
end
