class Event < ActiveRecord::Base
  attr_accessible :event_date, :location, :group_id

  has_many :game_suggestions
  has_many :rsvps

  validates_presence_of :location, :event_date

  validate :not_past_date

  def not_past_date
    if self.event_date < Date.today 
      errors.add(:event_date,'is in the past. Got a time machine?')
    end
  end

end
