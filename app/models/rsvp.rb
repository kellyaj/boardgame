class Rsvp < ActiveRecord::Base
  attr_accessible :confirmed, :event_id, :member_id, :message, :snacks

  belongs_to :user
  belongs_to :event
  belongs_to :member
end
