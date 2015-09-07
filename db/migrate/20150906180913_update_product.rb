class UpdateProduct < ActiveRecord::Migration
  def change
    change_column_null :products, :name, false
    change_column_null :products, :price, true
    change_column_default :products, :price, 0
    add_foreign_key :products, :users
  end
end
