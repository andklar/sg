class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login

  def not_authenticated
  	redirect_to login_path, alert: "Please login first"
	end

  def current_user
  @current_user ||= User.find_by_id!(session[:user_id])
  end

  helper_method :current_user

end
