class Member < ActiveRecord::Base
  attr_accessible :group_id, :user_id

  belongs_to :group
  belongs_to :user

  has_many :posts

  validates_uniqueness_of :user_id, :scope => [:group_id]
  validates_presence_of :group_id, :user_id
end
