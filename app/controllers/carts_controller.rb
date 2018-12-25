class CartsController < ApplicationController
	def show
		@cart_item = CartItem.all
		@cart = Cart.where(user_id: current_user.id).last
		@cart_items = @cart.cart_items
		@cart = Cart.new
	end

	def destroy
	end


end
