class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    raise
    user = User.find(params[:user_id])
    card = Card.find(params[:card_id])
    order = Order.new(user: user, card: card)
    if order.save
      redirect_to cards_path
    else
      render :new
    end
  end
end
