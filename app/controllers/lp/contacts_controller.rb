class Lp::ContactsController < Lp::ApplicationController

  def create
    @contact = Contact.new(create_params)
    if @contact.save
      render json: {}, status: 201
    else
      render json: {errors: @contact.errors.full_messages}, status: 422
    end
  end

  private

  def create_params
    params.fetch(:contact,{}).permit(:email,:first_name,:last_name,:tel1,:tel2,:tel3,:comment)
  end

end
