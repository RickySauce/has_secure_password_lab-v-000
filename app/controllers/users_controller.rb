class UsersController < ApplicationController

  def create
    user = User.new(user_params).save
    redirect_to user_path(user)
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
