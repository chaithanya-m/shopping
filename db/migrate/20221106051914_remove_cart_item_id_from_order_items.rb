class RemoveCartItemIdFromOrderItems < ActiveRecord::Migration[7.0]
  def change
     remove_column :order_items, :cart_item_id
  end
end
