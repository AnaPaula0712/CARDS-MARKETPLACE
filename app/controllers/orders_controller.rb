class OrdersController < ApplicationController

  def new
    @card = Card.find(params[:card_id])
    @order = Order.new
  end

  def create
    card = Card.find(params[:card_id])
    card.available = false
    order = Order.new(order_params)
    order.card = card
    if order.save
      card.save
      redirect_to purchase_path
    else
      render :new
    end
  end

  private

  def order_params
    params.require('order').permit(:user_id)
  end
end
