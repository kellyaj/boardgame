class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :picture
      t.string :category

      t.timestamps
    end
  end
end
