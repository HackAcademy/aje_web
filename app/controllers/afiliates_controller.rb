class AfiliatesController < ApplicationController
	def create
  	@afiliate = Afiliate.new(afiliate_params)
    	if @afiliate.save
    		redirect_to afiliate_path
        flash[:notice] = "Registro exitoso."
    	else
        render 'home/afiliate'
    		# flash[:notice] = "No se ha podido procesar el registro. "
    	end
	end
 
	private
		def afiliate_params
  		params.require(:afiliate).permit(:name, :lastname, :ci, :phone, :email, :business)
		end
end
