class AddingDefault < ActiveRecord::Migration[7.0]
  def change
    change_column :items,:discount_id,:integer,default:3
  end
end
