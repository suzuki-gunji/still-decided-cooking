class DecidesController < ApplicationController

  def index
    @cooks = Cook.order("created_at DESC")
  end
  
  def new
    @decide = Decide.new
  end

  def create
    @decide = Decide.new(decide_params)
    @cooks = Cook.where(genre_id: @decide.genre_id)
    if @cooks.empty?
      render :new 
    else
      @cook = @cooks.sample
      @decide.save
      @decide.update(cook_id: @cook.id)
      redirect_to cook_path(@cook.id)
    end
  end 

  private
  def decide_params
    params.require(:decide).permit(:genre_id, :cook_id, :user_id).merge(user_id: current_user.id)
  end
end

