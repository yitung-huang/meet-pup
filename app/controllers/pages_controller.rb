class PagesController < ApplicationController

  # render signup/login page if user is signed in
  def index
    @user = User.new
  end

  def signup
    @user = User.new
    session[:error] = nil
  end

  def profile
    @user = User.find(session[:user_id])
    redirect_to user_path(@user)
  end

  # render dashboard if user have dog profiles set up
  def dashboard
    @dogs = Dog.all
  end
end
