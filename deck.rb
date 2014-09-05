
class Deck
  attr_accessor :cards

  def initialize
    @cards = []
  end

  def get_card
    @cards.pop
  end

  def shuffle_cards
    @cards.shuffle! # BUG should not be destructive
  end

  def game_over
    @cards.empty?
  end

end






