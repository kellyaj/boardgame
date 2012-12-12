class Snack < ActiveRecord::Base
  attr_accessible :event_id, :name, :user_id

  belongs_to :user
  belongs_to :event
end
