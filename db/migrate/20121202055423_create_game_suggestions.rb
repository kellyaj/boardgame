class CreateGameSuggestions < ActiveRecord::Migration
  def change
    create_table :game_suggestions do |t|
      t.integer :game_id
      t.integer :event_id

      t.timestamps
    end
  end
end
