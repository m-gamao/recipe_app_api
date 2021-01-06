class AddLikesToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :likes, :integer
  end
end
