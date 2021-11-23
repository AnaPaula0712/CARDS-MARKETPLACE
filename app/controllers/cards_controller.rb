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
    if @card.save
      redirect_to card_path(@card)
    else
      render :new
    end
  end

  def card_params
    description = %i[user_id name price category photo foil conservation_state color edition rarity]
    params.require(:card).permit(description)
  end
end
