class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include?('?')
      @answer = "Stupid question, go to work!"
    else
      @answer = "I don't care, go to work!"
    end
  end
end
