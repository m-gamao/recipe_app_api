class AddLikesToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :favorites, :likes
  end
end
