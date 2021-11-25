class CardsController < ApplicationController
  before_action :set_card, only: %i[show edit update destroy]

  def index
    @cards = Card.where(available: true)
  end

  def show
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

  def edit; end

  def update
    if @card.user == current_user
      @card.update(card_params)
      redirect_to card_path(@card), notice: 'Card was successfully updated.'
    end
  end

  def search
    @cards = Card.search_by_name(params[:name])
  end

  def destroy
    if @card.user == current_user
      @card.destroy
      redirect_to cards_path, notice: 'Card was successfully destroyed.'
    end
  end

  private

  def set_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:name, :foil, :price, :category, :conservation_state, :color, :edition, :rarity, :photo, :picture)
  end
end
