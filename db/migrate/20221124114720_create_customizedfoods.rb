class CreateCustomizedfoods < ActiveRecord::Migration[7.0]
  def change
    create_table :customizedfoods do |t|

      t.timestamps
    end
  end
end
