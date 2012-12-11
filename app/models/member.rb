class Member < ActiveRecord::Base
  attr_accessible :group_id, :user_id

  belongs_to :group
  belongs_to :user

  has_many :posts
  has_many :rsvps
  validates_uniqueness_of :user_id, :scope => [:group_id]
  validates_presence_of :group_id, :user_id

  def destroy_related_invite
  end
end
