class Admins::GenresController < ApplicationController
	layout 'admin'
	def new
		@genre = Genre.new
		@genres = Genre.all
	end

	def create
		@genre = Genre.new(genre_params)
		if@genre.save
			flash[:notice] = "投稿完了"
			redirect_to admins_cds_top_path
	    end
	end

	def destroy
	    genre = Genre.find(params[:id])
		genre.destroy
		redirect_to admins_cds_top_path
	end


	    private

    def genre_params
        params.require(:genre).permit(:cd_genre)
    end
end
