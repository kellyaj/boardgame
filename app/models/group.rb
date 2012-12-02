class Group < ActiveRecord::Base
  attr_accessible :name, :location, :description, :picture

  has_many :users, :through => :members
  has_many :posts, :through => :members
  has_many :members
  has_many :events #not sure if this is necessary
  validates_presence_of :name
  validates_uniqueness_of :name
end
