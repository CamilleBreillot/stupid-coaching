class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_input = params[:question] if params[:question]
    answer_array = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    if @user_input == 'I am going to work'
      @answer = answer_array[0]
    elsif @user_input.end_with?('?')
      @answer = answer_array[1]
    else
      @answer = answer_array[2]
    end
  end
end
