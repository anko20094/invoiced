class V1::ContactsController < ApplicationController
  def index
    @contacts = Contact.all

    render json: @contacts, status: :ok
  end

  def create
    @contact = Contact.new(contacts_params)

    @contact.save
    render json: @contact, status: :created
  end

  def destroy
    @contact = Contact.wehere(id: params[:id].first)
    if @contact.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  private

  def contacts_params
    params.require(:contact).permit(:first_name, :last_name, :email)
  end
end
