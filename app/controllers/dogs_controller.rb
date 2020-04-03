class DogsController < ApplicationController
  helper ApplicationHelper

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @dog = Dog.new
  end

  def edit
    @user = User.find(params[:user_id])
    @dog = @user.dogs.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @dog = @user.dogs.create(dog_params)

    redirect_to user_path(@user)
  end

  def update
    @user = User.find(params[:user_id])
    @dog = @user.dogs.find(params[:id])

    if @dog.update(dog_params)
      redirect_to @dog
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @dog = @user.dogs.find(params[:id])
    @dog.destroy
    redirect_to user_path(@user)
  end

  private
    def dog_params
      params.require(:dog).permit(:name, :birth_date, :gender, :size)
    end

end
