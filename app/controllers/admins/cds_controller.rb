class Admins::CdsController < ApplicationController
 layout 'admin'

	def top
		@cd = Cd.new

	end

	def index
		@cds  = Cd.paginate(page: params[:page])
        @search = Cd.ransack(params[:q])
        @result = @search.result
	end

	def show
		@cd = Cd.find(params[:id])
	end

	def edit
		@cd = Cd.find(params[:id])
	end

	def create
         @cd = Cd.new(cd_params)

         if @cd.save
            flash[:notice] = "successfully"
            redirect_to admins_cds_top_path
        end


	end

	def update
		cd = Cd.find(params[:id])
        cd.update(cd_params)
        redirect_to admins_cds_path(cd.id)

	end

	def destroy
	    cd = Cd.find(params[:id])
		cd.destroy
		redirect_to admins_cds_top_path
	end
	private
    def cd_params
        params.require(:cd).permit(:cd_title,
        	                       :jacket_image,
        	                       :disc,
        	                       :artist_id,
        	                       :label_id,
        	                       :genre_id,
        	                       :price,
        	                       :stock,
        	                       :song,
        	                       :recommended,
        	                       roomtypes_attributes: [:id,:cd_id,:song_title,:_destroy]
        )
    end

end
