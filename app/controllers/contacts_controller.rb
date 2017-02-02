class ContactsController < ApplicationController

	def new
    	@contact = Contact
  	end
 
  	def create
    	@contact = Contact.new(params[:contact])
	    if @contact.valid?
	      ContactMailer.contact(@contact).deliver_now.deliver_now
	    else
	      render :new
	    end
  	end
end