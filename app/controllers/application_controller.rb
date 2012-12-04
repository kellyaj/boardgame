class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
  	User.find(session[:user_id]) if session[:user_id]
  end

  def current_user_check
  	if !current_user
  		redirect_to login_page_url, notice: "You must be logged in to perform that action."
  	end
  end

end
