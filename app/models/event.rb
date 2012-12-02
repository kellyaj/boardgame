class Event < ActiveRecord::Base
  attr_accessible :date, :location, :group_id

  has_many :game_suggestions
 	has_many :rsvps

  #not sure if the group_id is necessary
end
