class Discount < ActiveRecord::Migration[7.0]
  def change
    add_column :discounts,:name,:string
    add_column :discounts,:percentage,:decimal
    add_column :items,:discount_id,:integer
    add_column :carts,:image,:string
    remove_column :items,:rating

  end
end
