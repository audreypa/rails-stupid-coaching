class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  private

  def coach_answer(your_message)
    if your_message.downcase == 'i am going to work right now!'
      ''
    elsif your_message.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
