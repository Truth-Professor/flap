class Admins::ArtistsController < ApplicationController
	layout 'admin'
	def new
		@artist = Artist.new
		@artists = Artist.all
		#artist = Artist.find(params[:id])


	end

	def create
		@artist = Artist.new(artist_params)
		if@artist.save
			flash[:notice] = "投稿完了"
			redirect_to admins_cds_top_path
	    end
	end

	def destroy
	    artist = Artist.find(params[:id])
		artist.destroy
		redirect_to admins_cds_top_path
	end


	    private

    def artist_params
        params.require(:artist).permit(:artist_name)
    end
end
