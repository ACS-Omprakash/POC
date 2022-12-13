class Coupon < ActiveRecord::Migration[7.0]
  def change
    add_column :carts,:discount_id,:integer
  end
end
