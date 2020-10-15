class RemovYieldAddServingSize < ActiveRecord::Migration[6.0]
  def change
    remove_column :favorites, :yield, :string
    add_column :favorites, :serving_size, :string
  end
end
