class AddOns < ActiveRecord::Migration[7.0]
  def change
    remove_column :customizedfoods, :add_ons
    add_column :customizedfoods, :add_ons, :string
  end
end
