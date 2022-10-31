class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :productName
      t.string :productType
      t.integer :productPrize
      t.boolean :saveProduct,:default => true
      t.string :productImage,:default=> nil

      t.timestamps
    end
  end
end
