class Favorite < ActiveRecord::Base
  attr_accessible :game_id, :user_id

  belongs_to :user
  belongs_to :game

  validates_presence_of :game_id, :user_id
end
