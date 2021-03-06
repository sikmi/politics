class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper :application

  #rescue_from Exception,                      with: :render500
  rescue_from ActionController::RoutingError, with: :render404
  rescue_from ActiveRecord::RecordNotFound,   with: :render404
  rescue_from ActiveRecord::RecordNotUnique,  with: :render422

  def render404
  end

  def render422
  end

  def render500
  end

end
