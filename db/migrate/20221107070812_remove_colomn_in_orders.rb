class RemoveColomnInOrders < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :totalPrize
  end
end
