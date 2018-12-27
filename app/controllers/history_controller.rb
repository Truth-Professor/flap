class HistoryController < ApplicationController

  def index
  	@cart = current_user.carts.last

  end

  def create
  	order = Order.where(user_id: current_user.id).last
  	cart = Cart.where(user_id: current_user.id).last
  	attributes = order.attributes

  	cart.cart_items.each do |cart_item|
	  	# History.create(attributes.slice(:cd_title, :created_at, ))
	  	@history = History.new
	  	@history.product_num = cart_item.product_num
	  	@history.price = cart_item.cd.price
	  	@history.order_id = order.id
	    @history.save
  	end
    redirect_to user_history_path(params[:cart_id])
  end

end
