class DecidesController < ApplicationController

  def index 
  end
  
  def new
    @decide = Decide.new
  end

  def create
    @decide = Decide.new(decide_params)
    if @decide.save
      @cook = Cook.find_by(genre_id: @decide.genre_id)
      if @cook.nil?
        @decide = Decide.new(decide_params)
        render :new
      else  
        @decide.update(cook_id: @cook.id)
        redirect_to cook_path(@cook.id)
      end
    else 
      render :new 
    end
  end 

  private
  def decide_params
    params.require(:decide).permit(:genre_id, :cook_id)
  end
end

