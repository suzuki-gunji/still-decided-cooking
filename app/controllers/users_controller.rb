class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
    @nickname = @user.nickname
    @cooks = Cook.order("created_at DESC")
  end
end