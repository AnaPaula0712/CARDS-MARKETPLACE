class QuestionsController < ApplicationController
  def new
    @card = card.find(parms[:card_id])
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @card = Card.find(params[:card_id])
    @question.card = @card
    @question.save
    redirect_to card_path(@card)
  end

  private
  def question_params
    params.require(:question).permit(:context)
  end
end
