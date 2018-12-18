class UsersController < ApplicationController

  def index
    @user = User.find_by(params[:id])
  end

  def history
  end

  def edit
    @user = User.find_by(params[:id])
  end

  def update
    user = User.find_by(params[:id])
    user.update(user_params)
    redirect_to users_path(current_user.id)
  end

  def destroy
  end

private

  def user_params
    params.require(:user).permit(:name_kanji, :name_kana, :email, :postal_code, :address, :phone_number)
  end

end
