class AddFavoriteToCollection < ActiveRecord::Migration
  def change
  	add_column :collections, :favorite, :boolean
  end
end
