class HomeController < ApplicationController
	def contact
		@contact = new
	end
	def afiliate
		
	end
	def new
		@contact = Contact.new
	end
	def create
	    @contact = Contact.new(params[:contact])
	    @contact.request = request
	    if @contact.deliver
	      flash.now[:error] = nil
	      flash.now[:notice] = 'Thank you for your message!'
	    else
	      flash.now[:error] = 'Cannot send message.'
	      redirect_to root_path
	    end
	    redirect_to root_path
	end
end
