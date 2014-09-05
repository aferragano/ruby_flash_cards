

class View


  def welcome_message
    puts "_" * 45
    puts "Welcome to Flash Cards! \n\n by Ant,\n \t Chris, \n \t\t Francisco,\n \t\t\t & Steph\n"
    puts "_" * 45

  end

  def current_question(question)

    puts "_" * 45 + "\n" * 10
    puts "\t\t#{question}"
    puts "\n" * 10 + "_" * 45

  end

  def get_input
    gets.chomp
  end

  def incorrect_prompt
    puts "_" * 45 + "\n" * 10
    puts "\t\tWOMP WOMP! \n\n\tYou are incorrect, Try again!"
    puts "\n" * 10 + "_" * 45
  end

  def correct_prompt
    puts "_" * 45 + "\n" * 10
    puts "\tHOLY MOLY, You got it right!\n\t\t I'm shocked!"
    puts "\n" * 10 + "_" * 45
  end

  def exit_message
    puts "_" * 45 + "\n" * 10
    puts "_" * 45 + "\n" * 10
    puts "\tThanks\n\t\t   for\n\t\t\t   playing!"
    puts "\n" * 10 + "_" * 45
  end

end


