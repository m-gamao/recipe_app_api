class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :recipe_name
      t.string :url
      t.string :image
      t.string :serving_size
    end
  end
end


#ADD THE T.STRING: SERVING_SIZE - rollback and re-migrate this