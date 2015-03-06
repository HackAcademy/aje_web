class AfiliatesController < ApplicationController
	def index
  		@afiliate = Afiliate.all
	end

	def create
		@afiliate = Afiliate.all
	  	@afiliate = Afiliate.new(afiliate_params)
 
  		if @afiliate.save
    		redirect_to action: "index"
  		else
    		render 'index'
  		end
	end
 
	private
  		def afiliate_params
    		params.require(:afiliate).permit(:name, :lastname, :CI, :phone, :email, :business)
  		end
end
