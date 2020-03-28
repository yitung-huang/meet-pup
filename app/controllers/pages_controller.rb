class PagesController < ApplicationController
  # TODO: Check if user has signed in to render landing page
  # render signup/login page if user is signed in
  def index
    @user = User.new
  end

  # TODO: Check if signed in user has dog profiles set up
  # render user profile if user do not have dog profiles set up
  def profile
  end

  # render dashboard if user have dog profiles set up
  def dashboard
    @dogs = Dog.all
  end
end
