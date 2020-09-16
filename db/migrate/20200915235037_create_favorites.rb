class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :recipe_name
      t.string :url
      t.string :image
    end
  end
end
