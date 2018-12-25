class CartItemsController < ApplicationController

	def create
		@cd = Cd.find(params[:cd_id])
		@cart_item = @cd.cart_items.new
		@cart_item.cart_id = params[:cart_id]
		@cart_item.product_num = params[:cart_item][:product_num]
		@cart_item.save

		redirect_to users_carts_path(current_user.cart.id)
	end

	def destroy
		cart_item = CartItem.find_by(cart_id: params[:cart_id], cd_id: params[:cd_id])
		cart_item.destroy

		redirect_to users_carts_path(current_user.cart)
	end

end
