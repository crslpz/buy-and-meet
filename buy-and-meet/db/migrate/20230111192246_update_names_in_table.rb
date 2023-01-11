class UpdateNamesInTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :messages, :users_id, :user_id
    rename_column :messages, :conversations_id, :conversation_id
  end
end
