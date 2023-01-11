class Message < ApplicationRecord
    validates :body, :conversation_id, :user_id
    
    belongs_to :conversations
    belongs_to :user

end
