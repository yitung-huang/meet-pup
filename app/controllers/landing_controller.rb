class LandingController < ApplicationController
  # TODO: Check if user has signed in to render landing page
  # render signup/login page if user is signed in
  def index
  end

  # render dashboard if user is signed in
  def dashboard
    @user = User.find(params[:id])
  end
end
