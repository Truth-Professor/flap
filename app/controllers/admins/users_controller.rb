class Admins::UsersController < ApplicationController
	layout 'admin'

	PER = 2

	def index
		@users  = User.paginate(page: params[:PER])
        @search = User.ransack(params[:q])
        @result = @search.result
	end


	def show
		@user = User.find(params[:id])
		@cds  = Cd.paginate(page: params[:PER])
        @search = Cd.ransack(params[:q])
        @result = @search.result

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
		    user = User.find(params[:id])
			user.destroy
		    redirect_to admins_users_path
	end

	private

  def user_params
    params.require(:user).permit(:name_kanji, :name_kana, :email, :postal_code, :address, :phone_number, :profile_image)
  end

end
