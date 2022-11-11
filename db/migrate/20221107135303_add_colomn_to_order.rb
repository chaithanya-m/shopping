class AddColomnToOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :totalPrice, :integer, default:0
    add_column :orders, :no_OfItems, :integer, default:1
  end
end
