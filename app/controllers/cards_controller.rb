class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
    @question = Question.new
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    @card.user = current_user
    if @card.save
      redirect_to @card
    else
      render :new
    end
  end

  def destroy
    @card = Card.find(params[:id])
    if @card.user == current_user
      @card.destroy
      redirect_to cards_path, notice: 'Card was successfully destroyed.'
    end
  end

  def card_params
    params.require(:card).permit(:name, :foil, :price, :category, :conservation_state, :color, :edition, :rarity, :photo)
  end
end
