class RemoveServingSizeAddYield < ActiveRecord::Migration[6.0]
  def change
    remove_column :favorites, :serving_size, :string
    add_column :favorites, :yield, :string
  end
end
