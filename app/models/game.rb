class Game < ActiveRecord::Base
  attr_accessible :category, :name, :picture
  has_many_and_belongs_to :favorite
end
