class AddLocationAndStuffToUser < ActiveRecord::Migration
  def change
  	add_column :users, :location, :string
  	add_column :users, :game_preferences, :string
  	add_column :users, :top_five_games, :string
  	add_column :users, :picture, :string
  	add_column :users, :level, :string
  end
end
