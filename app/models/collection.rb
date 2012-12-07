class Collection < ActiveRecord::Base
  attr_accessible :game_id, :user_id, :favorite, :games_attributes

  belongs_to :user
  belongs_to :game
 	has_many :games
  accepts_nested_attributes_for :games
end
