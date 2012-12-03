class Event < ActiveRecord::Base
  attr_accessible :event_date, :location, :group_id

  has_many :game_suggestions
 	has_many :rsvps

 #Callback to enforce date is not in the past
end
