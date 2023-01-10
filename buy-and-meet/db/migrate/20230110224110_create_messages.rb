class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :body, null: false
      t.references :conversations, index:true
      t.references :users, index: true
      
      t.timestamps
    end
  end
end
