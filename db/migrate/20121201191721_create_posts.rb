class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :member_id
      t.text :message

      t.timestamps
    end
  end
end
