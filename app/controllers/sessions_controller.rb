class SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:session][:email]).try(:authenticate, params[:sessions][:password])
    if user
      if user.is_active?
        session[:user_id] = user.id
        redirect_to (session[:target_url] || root_path), :notice => "Login Success."
      else
        redirect_to new_session_path, :flash => { :error => "Invalid username or password." }
      end
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_path, :notice => "Successfully logged out."
  end
  
end
