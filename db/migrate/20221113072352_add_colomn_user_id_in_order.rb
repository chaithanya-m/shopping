class AddColomnUserIdInOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :user_id, :integer,null: false ,foreign_key: true
  end
end
