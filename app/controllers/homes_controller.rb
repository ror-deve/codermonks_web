class HomesController < ApplicationController
  def index
    @contact = Contact.new
  end

  def contact_us
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path, notice: 'Thank You for inquiry'
      # render json: { status: 'success', message: 'Contact successfully created.' }
    # else
    #   render :index
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message, :subject)
  end
end
