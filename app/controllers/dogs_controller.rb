class DogsController < ApplicationController

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @dog = Dog.new
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @dog = @user.dogs.create(dog_params)

    redirect_to user_path(@user)
  end

  private
    def dog_params
      params.require(:dog).permit(:name, :age, :gender, :size)
    end

end
