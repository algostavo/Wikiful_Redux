class SessionsController < ApplicationController

  def new
    
  end
 
  def create
      user = User.find_by_email(params[:sessions][:email].downcase)
      if user && user.authenticate(params[:sessions][:password])
          session[:user_id] = user.id
          redirect_to root_path, :notice => "Login Success."
        else
          flash.now[:error] = "Invalid username or password." 
          render "new"
      end
    end


  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged Out"
  end

end
