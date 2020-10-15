class CreateServings < ActiveRecord::Migration[6.0]
  def change
    create_table :servings do |t|
      t.string :serving_size  #see below references
      t.string :yield
      t.string :favorite_id
    end
  end
end

# 4 Serving_size DATA STRINGS ON THE TABLE: 
  # "SMALL: 1-3 people", 
  # "MEDIUM: 4-6 people", 
  # "LARGE: 7-10 people", 
  # "PARTY: 11 people+"