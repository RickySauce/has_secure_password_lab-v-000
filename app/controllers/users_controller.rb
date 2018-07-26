class UsersController < ApplicationController

  def create
    User.find_or_create_by(user_params)
    binding.pry
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
