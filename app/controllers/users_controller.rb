class UsersController < ApplicationController

  def create
    user = User.new(user_params).save
    session[:user_id] = user.id
    redirect_to users_path
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
