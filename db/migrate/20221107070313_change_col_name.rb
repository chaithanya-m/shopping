class ChangeColName < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :productPrize, :productPrice 
  end
end
