class SnacksController < ApplicationController
  def new
  	@snack = Snack.new
  end

  def create
  	@snack = Snack.new
  	@event = Event.find(params[:event_id])
  	@snack.name = params[:name]
  	@snack.event_id = params[:event_id]
  	@snack.user_id = params[:user_id]
  	
  	respond_to do |format|
      if @snack.save
        format.js { render 'create' }
        format.html { redirect_to groups_url, notice: 'Snack was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end 
  end

  def destroy
  	@snack = Snack.find(params[:id])
  	@snack.destroy
  end
end
