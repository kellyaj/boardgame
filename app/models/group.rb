class Group < ActiveRecord::Base
  attr_accessible :name, :location, :description, :picture

  has_many :users, :through => :members
  has_many :posts, :through => :members
  has_many :members
  has_many :events #not sure if this is necessary
  validates_presence_of :name
  validates_uniqueness_of :name

  after_destroy :remove_related_members

  def add_member(user) #might need this for a join action in the groups controller
  	new_member = Member.new
  	new_member.user_id = user.id
  	new_member.group_id = self.id
  	new_member.save
  end

  def remove_related_members
  	related_members = Member.where(:group_id => self.id)
  	related_members.destroy_all
  end

end
