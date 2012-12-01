class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :password_digest, :location, :top_five_games, :game_preferences, :picture, :level


  has_secure_password
  
  has_many :members
  has_many :groups, :through => :members
  has_many :favorites
  has_many :posts, :through => :members
end
