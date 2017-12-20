class SessionsController < ApplicationController
  def create
  	# binding.pry
    user = User.from_omniauth(request.env["omniauth.auth"])
    session[:user_id] = user.id
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    redirect_to videos_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
