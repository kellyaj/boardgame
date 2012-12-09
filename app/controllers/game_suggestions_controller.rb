class GameSuggestionsController < ApplicationController
  def new
  	@game_suggestion = GameSuggestion.new
  end

  def create
  	@game_suggestion = GameSuggestion.new

  	
    current_suggestion = params[:game]
    make_game_suggestion(current_suggestion)

    if @game_suggestion.save
      redirect_to groups_url, notice: 'Suggestion was successfully created.' 
    else
      render action: "new"
  	end
  end

  def make_game_suggestion(suggestion)
  	unless suggestion.empty?
  		game = Game.find_by_name(suggestion)
  		if game.nil?
  			game = Game.create(:name => suggestion)
  		end
  		GameSuggestion.create(:game_id => game.id, :event_id => params[:event_id])
  	end
  end

  def upvote
    value = params[:type] == "up" ? 1 : -1
    @game_suggestion = GameSuggestion.find(params[:id])
    @game_suggestion.add_or_update_evaluation(:upvotes, value, current_user.members.first)
    redirect_to :back, notice: "Thank you for voting" 
  end

end
