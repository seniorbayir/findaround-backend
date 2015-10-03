class CreateTables < ActiveRecord::Migration
  def change

    create_table "orders" do |t|
    end

    create_table "products" do |t|
      t.string   "name"
      t.float    "price", default: 0.0
    end

    create_table "reviews" do |t|
      t.string   "content"
    end

    create_table "users" do |t|
      t.string   "email"
      t.string   "password"
    end

    create_table "companies" do |t|
      t.string   "name"
    end

  end
end
