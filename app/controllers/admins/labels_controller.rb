class Admins::LabelsController < ApplicationController
	def new
		@label = Label.new
	end

	def create
		@label = Label.new(label_params)
		@label.save
		redirect_to admins_cds_top_path
	end


	    private

    def label_params
        params.require(:label).permit(:cd_label)
    end
end

