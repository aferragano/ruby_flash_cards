class Card
  attr_reader :question, :answer

  def initialize(args = {})
    @question = args[:question]
    @answer = args[:answer]
  end

  def correct_ans?(user_answer)
    user_answer.downcase == answer.downcase
    # add more flexibility in the future..
  end
end
