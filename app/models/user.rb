class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :password_digest, :location, :picture, :firstname, :lastname


  has_secure_password
  
  has_many :collections 
  #To get to a user's favorites, use example_user.collections.find_all_by_favorite(true)
  has_many :members
  has_many :groups, :through => :members
  has_many :posts, :through => :members
  has_many :games, :through => :favorites
  validates_presence_of :name, :email, :password, :password_confirmation
  validates_uniqueness_of :name, :email

end
