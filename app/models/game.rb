class Game < ActiveRecord::Base
  attr_accessible :category, :name, :picture

  has_many :collections
  has_many :game_suggestions
  has_many :users, :through => :collections
  validates_presence_of :name
  validates_uniqueness_of :name
end
