class ContactsController < ApplicationController
def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    
    if @contact.valid?
      ContactMailer.new_contact(@contact).deliver
      redirect_to root_path, notice: "Your messages has been sent."
    else
      flash[:alert] = "An error occurred while delivering this message."
      render :new
    end
  end

private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :body)
  end

end