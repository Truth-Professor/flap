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

	end

	def update

	end

	def destroy

	end

end
