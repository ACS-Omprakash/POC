class CartColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :carts,:itemname,:string
    add_column :carts,:unit_price,:decimal
    add_column :carts,:subtotal,:decimal
    add_column :carts,:rating,:decimal
    add_column :carts,:itemdescription,:text
  end

end
