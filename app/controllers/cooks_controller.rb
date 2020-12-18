class CooksController < ApplicationController

  def index
    @cooks = Cook.order("created_at DESC")
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
    params.require(:cook).permit(:name, :recipe, :genre_id)
  end
end
