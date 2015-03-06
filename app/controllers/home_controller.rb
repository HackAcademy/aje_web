class HomeController < ApplicationController
	def index
		
	end
	def contact
		@contact = new
	end
  	def new
    	@contact = Contact.new
  	end

  	def create
    	ContactsController
	end
end
