class Relations < ActiveRecord::Migration
  def up
    add_reference :venues, :user, index: true
    add_reference :reviews, :user, index: true
    add_reference :reviews, :product, index: true
    add_reference :products, :venue, index: true
    add_reference :orders, :user, index: true
    add_reference :orders, :product, index: true
  end
  def down
    remove_reference :venues, :user
    remove_reference :reviews, :user
    remove_reference :reviews, :product
    remove_reference :products, :venue
    remove_reference :orders, :user, index: true
    remove_reference :orders, :product, index: true
  end
end
