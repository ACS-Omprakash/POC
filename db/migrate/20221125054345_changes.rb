class Changes < ActiveRecord::Migration[7.0]
  def change
    add_column :carts,:item_id,:integer
    add_column :items,:cart_id,:integer
    add_column :carts,:quantity,:integer
  end
end
