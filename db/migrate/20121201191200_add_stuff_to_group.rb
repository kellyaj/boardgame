class AddStuffToGroup < ActiveRecord::Migration
  def change
  	add_column :groups, :description, :string
  	add_column :groups, :picture, :string
  	add_column :groups, :location, :string
  end
end
