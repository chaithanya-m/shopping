class Product < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :productName
      t.integer :productPrize
      t.string :productImage,:default=> nil
 
      t.timestamps
    end
  end
end
