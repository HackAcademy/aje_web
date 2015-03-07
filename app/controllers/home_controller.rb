class HomeController < ApplicationController
	def index
		@home = true
	end
	def contact
		@contact = new
	end
  	def new
    	@contact = Contact.new
  	end
  	def afiliate
    	@afiliate = Afiliate.new
  	end

  	def create
    	ContactsController
	end
  def mentor
    #aqui va el query
  end
end
