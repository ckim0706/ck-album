class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(secure_params)
    if @contact.valid?
      ContactMailer.contact_email(@contact).deliver_now
      flash[:notice] = "Your messages has been sent."
      redirect_to root_path
    else
      flash[:alert] = "An error occurred while delivering this message."
      render :new
    end
  end

  private

  def secure_params
    params.require(:contact).permit(:name, :email, :content)
  end

end