class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login

  def not_authenticated
    redirect_to login_path, alert: "Please login first"
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) || User.where(guest_token: guest_token).first_or_initialize.tap do |user|
    	user.email = guest_token
    	user.guest_token = guest_token
      if user.username == nil
        user.username = RandomUsername.username
      end
    	user.save(validate: false) if user.new_record?
    end
  end

  def guest_token
  	session[:guest_token]||= SecureRandom.hex(24)
  end

  helper_method :current_user

end
