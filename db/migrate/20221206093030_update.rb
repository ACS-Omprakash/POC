class Update < ActiveRecord::Migration[7.0]
  def change
    change_column :items,:image,:string,default: "istockphoto-1292437269-612x612.jpg"
    remove_column :items,:cart_id
  end
end
