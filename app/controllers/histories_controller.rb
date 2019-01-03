class HistoriesController < ApplicationController
  def index
  	@cart = current_user.carts.last

  end

  def create
  	cart = Cart.where(user_id: current_user.id).last
  	order = Order.where(cart_id: cart.id).last
  	attributes = order.attributes

  	cart.cart_items.each do |cart_item|
	  	# History.create(attributes.slice(:cd_title, :created_at, ))
	  	@history = History.new
	  	@history.product_num = cart_item.product_num
	  	@history.price = cart_item.cd.price
	  	@history.order_id = order.id
      if@history.save
             flash[:notice] = "ご購入ありがとうございました"
      end
	    cart_item.destroy
  	end
  	cart = Cart.create(user_id: current_user.id)
    redirect_to create_history_path(cart.id)
  end
end
