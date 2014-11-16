class Lp::ContactsController < Lp::ApplicationController

  def create
    render json: {}, status: 422
  end

end
