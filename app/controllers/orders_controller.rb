class OrdersController < ApplicationController
  def show
  	@cart = Cart.all
  	@order = Order.new
  end

  def create
  	 @order = Order.new
	 @order.cart_id = params[:cart_id]
	 @order.save
	 redirect_to user_order_path(:order_id)
  end
end
