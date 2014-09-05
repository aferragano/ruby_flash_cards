# controller.rb
require_relative 'deck','card','view'

class Controller
  attr_reader :deck

  def initialize
    @deck = Deck.new
    @view = View.new
    run
  end

  def run
    @view.welcome_message
    input =""
    until input == "exit" || input == "quit"
      while cards_left? == true
        current_card = deck.get_card
        until current_card.correct_answer(input)
        view.current_question(current_card.question)
        input = view.get_input
        view.incorrect_prompt
        end
        view.correct_prompt
    end
  end
end
