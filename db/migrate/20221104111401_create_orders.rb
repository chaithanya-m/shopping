class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :totalPrize
      

      t.timestamps
    end
  end
end
