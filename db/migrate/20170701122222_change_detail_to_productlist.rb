class ChangeDetailToProductlist < ActiveRecord::Migration[5.0]
  def change
    rename_column :product_lists, :product_id, :product_price
  end
end
