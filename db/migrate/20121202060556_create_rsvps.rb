class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.integer :member_id
      t.integer :event_id
      t.boolean :confirmed
      t.string :snacks
      t.string :message

      t.timestamps
    end
  end
end
