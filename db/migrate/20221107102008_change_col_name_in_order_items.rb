class ChangeColNameInOrderItems < ActiveRecord::Migration[7.0]
  def change
    rename_column :order_items, :productPrize, :productPrice
  end
end
