class Game < ActiveRecord::Base
  attr_accessible :category, :name, :picture

  has_many :favorites
  has_many :collection
  has_many :game_suggestions
  
  validates_presence_of :name
  validates_uniqueness_of :name
end
