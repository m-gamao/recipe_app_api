class CreateServings < ActiveRecord::Migration[6.0]
  def change
    create_table :servings do |t|
      t.string :serving_size  #see below references
      t.string :favorite_id
    end
  end
end

# 4 Serving_size options: 
  # Small: 1-3, 
  # Medium: 4-6, 
  # Large: 7-10, 
  # Party-size: 11 or greater