class Message < ApplicationRecord
    validates :body, :conversation_id, :user_id, presence: true
    
    belongs_to :conversations,
    foreign_key: :conversation_id,
    class_name: 'Conversation'
    
    belongs_to :user,
    foreign_key: :user_id,
    class_name: 'User'

end
