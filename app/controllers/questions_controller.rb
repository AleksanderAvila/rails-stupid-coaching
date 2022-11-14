class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question != nil
      @answer = if @question == "I'm going to work"
        'Great!'
      elsif @question.end_with? "?"
        @answer = 'Silly question get back to Work!'
      else
        @answer = "I don't care, get dressed and get back to work!"
      end
    end
  end
end
