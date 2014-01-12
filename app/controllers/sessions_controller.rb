class SessionsController < ApplicationController
  def new

  end
  
  def create
    user = User.find_by_email(params[:sessions][:username])
    if user.authenticate(params[:sessions][:password])
      session[:current_user] = user.email
      redirect_to root_url
    else
      render :new
    end
  end

  def destroy

  end
end
