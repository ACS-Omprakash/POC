class CustomizeFood < ActiveRecord::Migration[7.0]
  def change
    add_column :customizedfoods,:add_ons,:text,array: true, default: [].to_yaml
    add_column :customizedfoods,:top_ups,:string
    add_column :customizedfoods,:description,:text
    add_column :customizedfoods,:item_id,:integer
    add_column :items,:customizedfood_id,:integer

  end
end
