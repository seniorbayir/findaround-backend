class UpdateProduct < ActiveRecord::Migration
  def change
    change_column_null :products, :name, false
    change_column_null :products, :price, true
    change_column_default :products, :price, 0
    change_column_limit :users, :email, 64
  end
end
