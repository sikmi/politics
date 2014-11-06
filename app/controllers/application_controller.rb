class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_title

  def set_title
    @main_title = t("application.main_title")
    @sub_title  = t("view.#{controller_path.gsub("/",".")}.#{action_name}")
  end

end
