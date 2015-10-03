class Relations < ActiveRecord::Migration
  def up
    add_reference :companies, :user, index: true
    add_reference :reviews, :user, index: true
    add_reference :reviews, :product, index: true
    add_reference :products, :company, index: true
    add_reference :orders, :user, index: true
    add_reference :orders, :product, index: true
  end
  def down
    remove_reference :companies, :user
    remove_reference :reviews, :user
    remove_reference :reviews, :product
    remove_reference :products, :company
    remove_reference :orders, :user, index: true
    remove_reference :orders, :product, index: true
  end
end
