class UsersController < ApplicationController

before_action :authenticate_user!

  def index
  end

  def history
  end

  def edit
  end

  def create
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to users_path(current_user.id)
  end

  def destroy
    current_user.delete
    redirect_to root_path
  end

private

  def user_params
    params.require(:user).permit(:name_kanji, :name_kana, :email, :postal_code, :address, :phone_number)
  end

end
