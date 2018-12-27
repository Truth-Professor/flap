class CartsController < ApplicationController
	def show
		@cart_item = CartItem.all
		@cart = Cart.where(user_id: current_user.id).last
		@cart_items = @cart.cart_items
		@cart = Cart.new

		@order = Order.new
	end

	def create
		@cart = Cart.new
		@cart.cart_id = params[:cart_id]
		@cart.save

		redirect_to user_order_path(current_user.orders)
	end

	def destroy
	end


end
