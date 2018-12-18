class Admins::CdsController < ApplicationController
 layout 'admin'

	def top
		@cd = Cd.new

	end

	def index
		@cd = Cd.all

	end

	def show

	end

	def edit

	end

	def create
  # ストロングパラメーターを使用
         @cd = Cd.new(cd_params)
        # DBへ保存する
         @cd.save
        # 管理トップ画面へリダイレクト
        redirect_to admins_cds_top_path

	end

	def update

	end

	def destroy

	end
	private
    def cd_params
        params.require(:cd).permit(:cd_title,
        	                       :jacket_image_id,
        	                       :disc,
        	                       :artist_id,
        	                       :label_id,
        	                       :genre_id,
        	                       :price,
        	                       :stick,
        )
    end

end
