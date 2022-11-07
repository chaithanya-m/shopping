class AddOrderIdToOrderItems < ActiveRecord::Migration[7.0]
  def change
    add_column :order_items, :order_id, :integer,null: false ,foreign_key: true
  end
end
