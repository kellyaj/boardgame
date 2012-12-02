class Rsvp < ActiveRecord::Base
  attr_accessible :confirmed, :event_id, :member_id, :message, :snacks
end
