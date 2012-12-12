class GameSuggestion < ActiveRecord::Base
  attr_accessible :event_id, :game_id

  belongs_to :event
  belongs_to :game

  has_many :votes

  has_reputation :upvotes, source: :member, aggregated_by: :sum
  #Note: When being referenced as a variable, symbol, or in the console:
  #This model is written as game_suggestion or game_suggestions
  #Otherwise, as a model its name is GameSuggestion
end
