class Admins::LabelsController < ApplicationController
	layout 'admin'
	def new
		@label = Label.new
		@labels = Label.all
	end

	def create
		@label = Label.new(label_params)
		if@label.save
			flash[:notice] = "投稿完了"
			redirect_to admins_cds_top_path
	    end
	end

	def destroy
	    label = Label.find(params[:id])
		label.destroy
		redirect_to admins_cds_top_path
	end


	    private

    def label_params
        params.require(:label).permit(:cd_label)
    end
end

