class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
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

  def card_params
    params.require(:card).permit(:name, :foil, :price, :category, :conservation_state, :color, :edition, :rarity, :photo)
  end
end
