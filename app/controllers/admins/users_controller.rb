class Admins::UsersController < ApplicationController
	layout 'admin'

	def index
		@user = User.all
	end

	def show
		@user = User.find(params[:id])

	end

	def history

	end

	def edit
       @user = User.find(params[:id])
	end

	def update
		user = User.find(params[:id])
	    user.update(user_params)
	    redirect_to admins_users_path
	end

	def destroy
		if admin_signed_in?
		    user = User.find(params[:id])
			user.destroy
		    redirect_to admins_users_path
		else
		    redirect_to admins_users_path
			
		end
	end


	private

  def user_params
    params.require(:user).permit(:name_kanji, :name_kana, :email, :postal_code, :address, :phone_number, :profile_image)
  end

end
