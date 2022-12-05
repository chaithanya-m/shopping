class RemoveImageColomeFromProducts < ActiveRecord::Migration[7.0]
  def change
        remove_column :products, :productImage
  end
end
