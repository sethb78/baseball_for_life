class SessionsController < ApplicationController

  def new
  end

  def create
    #user = User.find_by_email(params[:session][:email].downcase)
    #if user && user.authenticate(params[:session][:password])
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])  # Checks that the user exists and the password entered matches password_digest
      sign_in user
      redirect_back_or user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end