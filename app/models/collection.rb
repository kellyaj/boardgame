class Collection < ActiveRecord::Base
  attr_accessible :game_id, :user_id, :favorite

  belongs_to :user
  belongs_to :game
 	has_many :games
end
