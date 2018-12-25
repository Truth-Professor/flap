class CartsController < ApplicationController
	def index
		@cart = Cart.where(user_id: current_user.id).last
		@cart_items = @cart.cart_items
		@cart = Cart.new
	end

	def destroy
	end
  # 商品一覧画面から、「商品購入」を押した時のアクション
    def add_item
	  	if @cart_item.blank?
	  		@cart_item = current_cart.cart_items.build(cd_id: params[:cd_id])
	  	end

	  	@cart_item.product_num += params[:product_num].to_i
	  	@cart_item.save
	  	redirect_to current_cart
    end

  # カート詳細画面から、「更新」を押した時のアクション
  def update_item
  	@cart_item.update(product_num: params[:product_num].to_i)
  	redirect_to current_cart
  end

# カート詳細画面から、「削除」を押した時のアクション
	def delete_item
		@cart_item.destroy
		redirect_to current_cart
	end

private

	def setup_cart_item!
		@cart_item = current_cart.cart_items.find_by(cd_id: params[:cd_id])
	end
end
