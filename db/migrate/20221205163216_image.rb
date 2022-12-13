class Image < ActiveRecord::Migration[7.0]
  def change
    add_column :items,:image,:string
    add_column :carts,:order_id,:integer
  end
end
