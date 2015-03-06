class AfiliatesController < ApplicationController
	def create
  	@afiliate = Afiliate.new(afiliate_params)
    	if @afiliate.save
    		redirect_to afiliate_path
    	else
    		render 'index'
    	end
	end
 
	private
		def afiliate_params
  		params.require(:afiliate).permit(:name, :lastname, :ci, :phone, :email, :business)
		end
end
