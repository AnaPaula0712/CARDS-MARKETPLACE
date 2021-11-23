class OrdersController < ApplicationController
  
  def new
    @card = Card.find(params[:card_id])
    @order = Order.new
  end

  def create
    card = Card.find(params[:card_id])
    order = Order.new(order_params)
    order.card = card
    if order.save
      redirect_to cards_path
    else
      render :new
    end
  end

  private

  def order_params
    params.require('order').permit(:user_id)
  end
end
