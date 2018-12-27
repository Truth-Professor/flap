class CdsController < ApplicationController 
  def top
    @cd = Cd.all

    if user_signed_in?
      if Cart.exists?(user_id: current_user.id)
      else
        Cart.create(user_id: current_user.id)
      end
    end
    @cds  = Cd.paginate(page: params[:page])
    @search = Cd.ransack(params[:q])
    @result = @search.result
  end

  def index
    @cd = Cd.all
  end

  def index_genre
  end

  def show
    @cd = Cd.find(params[:id])
    @cart_item = @cd.cart_item.new
    #@disc_num = @cd.disc_num
  end

  def update
  end

end
