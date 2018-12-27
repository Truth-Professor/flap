class Admins::SongsController < ApplicationController
	def create
		@song = Song.new(song_paramas)
	end

    private

    def song_params
        params.require(:song).permit(:cd_id, :song_title,:disk_num)
    end

end
