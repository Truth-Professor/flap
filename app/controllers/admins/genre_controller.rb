class Admins::GenreController < ApplicationController
	def new
		@genre = Genre.new
	end

	def create
		@genre = Genre.new(genre_params)
		@genre.save
		redirect_to admins_cds_top_path
	end


	    private

    def genre_params
        params.require(:genre).permit(:cd_genre)
    end
end
