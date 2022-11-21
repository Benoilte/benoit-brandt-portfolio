class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[new create]

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to new_contact_path, info: 'Message sent!'
      # flash.now[:success] = 'Message sent!'
    else
      # flash.now[:error] = 'Could not send message'
      render "contacts/new", status: :unprocessable_entity
      # render :new
      flash.alert = 'Could not send message'

    end
  end
end
