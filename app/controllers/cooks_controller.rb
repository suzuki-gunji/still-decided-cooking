class CooksController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :create, :show]

  def index
  end
  
  def new
    @cook = Cook.new
  end

  def create
    @cook = Cook.new(cook_params)
    if @cook.save
      redirect_to root_path
    else 
      render :new 
    end
  end

  def show
    @cook = Cook.find(params[:id])
  end 

  private
  def cook_params
    params.require(:cook).permit(:name, :recipe, :genre_id, :user_id).merge(user_id: current_user.id)
  end
end
