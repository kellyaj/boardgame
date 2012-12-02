class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :password_digest, :location, :top_five_games, :game_preferences, :picture, :level, :firstname, :lastname


  has_secure_password
  
  has_many :collections
  has_many :members
  has_many :groups, :through => :members
  has_many :favorites
  has_many :posts, :through => :members
  has_many :games, :through => :favorites
  validates_presence_of :name, :email, :password, :password_confirmation
  validates_uniqueness_of :name, :email

end
