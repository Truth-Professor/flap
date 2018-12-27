class OrdersController < ApplicationController
  def show
  	@cart = current_user.carts.last
    #@order = Order.where(user_id: current_user.id).last
   # @carts = @order.cart.cart_items

  	#@order = Order.new

    @history =History.new



  end

  def create
  	 @order = Order.new
	 @order.cart_id = params[:cart_id]
	 @order.save
	 redirect_to user_order_path(params[:cart_id])
  end
end
