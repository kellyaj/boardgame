class RemoveDateFromEvent < ActiveRecord::Migration
  def up
  	remove_column :events, :date
  	add_column :events, :event_date, :date
  end

  def down
  end
end
