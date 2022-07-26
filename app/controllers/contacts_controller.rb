class ContactsController < ApplicationController
	def index
		
	end

  def new 
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
  redirect_to contacts_path, notice: 'Message sent successfully!'
    else
      flash.now[:error] = 'Cannot send message'
      render :new
    end
  end
end
