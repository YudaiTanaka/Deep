class UsersController < ApplicationController

  def index
  end

  def create
  end

  def new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    current_user.update(update_params)
  end

  private
  def update_params
    params.require(:user).permit(:nickname, :text, :avatar)
  end

  def user_params
  params.require(:user).permit(:nickname, :password, :avatar)
  end
end
