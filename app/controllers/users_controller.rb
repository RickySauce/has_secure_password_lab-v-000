class UsersController < ApplicationController

  def create
    binding.pry
    User.find_or_create_by(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
