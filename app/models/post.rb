class Post < ActiveRecord::Base
  attr_accessible :member_id, :message

  belongs_to :member
  belongs_to :user
end
