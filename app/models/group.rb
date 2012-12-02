class Group < ActiveRecord::Base
  attr_accessible :name, :location, :description, :picture

  has_many :users, :through => :members
  has_many :posts, :through => :members
  has_many :members

  validates_presence_of :name
  validates_uniqueness_of :name
end
