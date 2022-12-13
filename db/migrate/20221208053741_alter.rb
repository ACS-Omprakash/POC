class Alter < ActiveRecord::Migration[7.0]
  def change
    remove_column :items,:customizedfood_id
    add_column :customizedfoods,:cart_id,:integer
  end
end
