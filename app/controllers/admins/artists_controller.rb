class Admins::ArtistsController < ApplicationController
	def new
		@artist = Artist.new
	end

	def create
		@artsit = Artist.new(artist_params)
		@artsit.save
		redirect_to admins_cds_top_path
	end


	    private

    def artist_params
        params.require(:artist).permit(:artist_name)
    end
end
