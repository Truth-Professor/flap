class CartItemsController < ApplicationController
before_action :authenticate_user!, only: [:create, :destroy]


	def create
		# @cd = Cd.find(params[:cd_id])
		# binding.pry
		@cart_item = CartItem.new
		@cart_item.cd_id = params[:cd_id]
		@cart_item.cart_id = params[:cart_id]
		@cart_item.product_num = params[:cart_item][:product_num]
		@cart_item.save
		redirect_to user_cart_path(current_user.carts)
	end

	def destroy
		cart_item = CartItem.find_by(cart_id: params[:cart_id], cd_id: params[:cd_id])
		cart_item.destroy

		redirect_to user_cart_path(current_user.carts)
	end

	private
         def cart_item_params
             params.require(:cart_item).permit(:cd_id, :cart_id, :product_num)
         end

end
