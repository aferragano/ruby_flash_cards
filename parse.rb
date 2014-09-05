# require 'pry'
require 'csv'
require_relative 'card.rb'

module Parse
  def self.create_cards(file = "cards.csv")
    deck = []
    CSV.foreach(file, headers: true, header_converters: :symbol) do |line|
      new_card = Card.new(line)
      deck << new_card
    end

    return deck
  end
end
