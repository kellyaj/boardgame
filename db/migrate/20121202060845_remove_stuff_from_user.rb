class RemoveStuffFromUser < ActiveRecord::Migration
  def up
  	remove_column :users, :top_five_games
  	remove_column :users, :game_preferences
  	remove_column :users, :level
  	
  end

  def down
  end
end
