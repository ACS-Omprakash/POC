class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :itemname
      t.decimal :price
      t.decimal :rating
      t.text :itemdescription

      t.timestamps
    end
  end
end
