class CdsController < ApplicationController
  def top
    @cd = Cd.all

    if user_signed_in?
      if Cart.exists?(user_id: current_user.id)
      else
        Cart.create(user_id: current_user.id)
      end
    end
  end

  def index
    @cd = Cd.all
  end

  def index_genre
  end

  def show
    @cd = Cd.find(params[:id])
  end

  def update
  end

end
