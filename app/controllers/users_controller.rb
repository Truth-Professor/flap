class UsersController < ApplicationController

# before_action :authenticate_user!

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def create
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(current_user.id)
  end

  def history
  end


private

  def user_params
    params.require(:user).permit(:name_kanji, :name_kana, :email, :postal_code, :address, :phone_number, :profile_image)
  end

end
