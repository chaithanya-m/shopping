class AddTotalPriceToOrderItems < ActiveRecord::Migration[7.0]
  def change
    add_column :order_items, :totalPrice, :integer, default:0
  end
end
