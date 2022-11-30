class AddColomnToProducts < ActiveRecord::Migration[7.0]
  def change
        add_column :products, :memory, :string ,default: nil
        add_column :products, :displaySize, :string,default: nil
        add_column :products, :camaras, :string,default: nil
        add_column :products, :battery, :string,default: nil
        add_column :products, :processor, :string,default: nil
  end
end
