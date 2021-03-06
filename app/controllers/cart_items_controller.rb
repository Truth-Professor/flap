class CartItemsController < ApplicationController
before_action :authenticate_user!, only: [:create, :destroy]


	def create
		# @cd = Cd.find(params[:cd_id])
		# binding.pry
  		@cart = Cart.where(user_id: current_user.id).last
		@cart_item = CartItem.new
		@cart_item.cd_id = params[:cd_id]
		@cart_item.cart_id = @cart.id
		@cart_item.product_num = params[:cart_item][:product_num]
		@cart_item.save!
		redirect_to user_cart_path(current_user.carts.last)
	end

	def destroy
		cart = CartItem.find(params[:id])
		cart.destroy

		redirect_to user_cart_path(current_user.carts.last)
	end

	private
         def cart_item_params
             params.require(:cart_item).permit(:cd_id, :cart_id, :product_num)
         end

end
