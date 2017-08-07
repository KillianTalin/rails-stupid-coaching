class CoachingController < ApplicationController
  def ask
  end

  def answer
    @question = params[:query]
    @answer = coach_answer(@question)
  end

  private

  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
      return "Congrats!"
    elsif your_message.include?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
    your_message.to_s
  end

end
