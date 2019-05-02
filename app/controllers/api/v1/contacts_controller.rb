class Api::V1::ContactsController < ApplicationController
  def create
    @contact = Contact.new contact_params
    if @contact.save
      render json: {success: true, contact: @contact}
    else
      render json: {success: false, errors: @contact.errors.messages}
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
