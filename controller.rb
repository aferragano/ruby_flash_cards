# controller.rb
# require 'pry'
require_relative 'deck'
require_relative 'card'
require_relative 'view'
require_relative 'parse'

class Controller
  attr_reader :deck, :view

  def initialize
    @deck = Deck.new
    @view = View.new
    run
  end

  def load_deck
    deck.cards += Parse.create_cards
  end

  def end_loop(input)
    input == "quit" || input == "exit" || input == "q"
  end

  def run
    @view.welcome_message
    load_deck

    @deck.shuffle_cards
    input = ""
    until end_loop(input) # BUG is it weird to keep calling this for each loop???
      until deck.game_over || end_loop(input)
        # binding.pry

        current_card = deck.get_card

        until current_card.correct_ans?(input) || end_loop(input)
          view.current_question(current_card.question)
          input = view.get_input

          current_card.correct_ans?(input) ? view.correct_prompt : view.incorrect_prompt
          # figure out how to do goodbye message
        end



      end
      view.exit_message
    end
  end

end

test = Controller.new

