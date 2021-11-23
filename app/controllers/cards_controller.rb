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

  def destroy
    @card = Card.find(params[:id])
    if @card.user == current_user
      @card.destroy
      redirect_to cards_path, notice: 'Card was successfully destroyed.'
    end
  end

  def card_params
    description = %i[user_id name price category photo foil conservation_state color edition rarity]
    params.require(:card).permit(description)
  end
end
