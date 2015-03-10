class HomeController < ApplicationController
	def index
		@allies = Ally.all
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
   	 	@mentors = Mentor.all
  	end
end
