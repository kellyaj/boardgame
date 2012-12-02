class Game < ActiveRecord::Base
  attr_accessible :category, :name, :picture

  has_many :favorites
  has_many :collection
  
  validates_presence_of :name
  validates_uniqueness_of :name
end
