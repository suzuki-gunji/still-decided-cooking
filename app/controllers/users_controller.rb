class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
    @nickname = @user.nickname
  end
end