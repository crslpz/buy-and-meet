class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.string :item_description, null: false
      t.string :condition, null: false
      t.integer :asking_price, null: false
      t.boolean :negotiable

      t.timestamps
    end
  end
end
