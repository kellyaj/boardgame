class Event < ActiveRecord::Base
  attr_accessible :date, :location

  has_many :game_suggestions
end
