class SessionsController < ApplicationController

  ERROR_INVALID_LOGIN_DETAILS = "The login details you have entered are invalid."

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])

    # Check if user exists and logs in if details are correct
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      session[:error] = nil

      # render dashboard if user have dog profiles set up
      if user.dogs.length > 0
        redirect_to dashboard_path

      # render user profile if user do not have dog profiles set up
      else
        redirect_to user_path(user)
      end

    # Stay on login page
    else
      session[:error] = ERROR_INVALID_LOGIN_DETAILS
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    session[:error] = nil

    redirect_to root_path
  end

end
