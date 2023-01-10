class User < ApplicationRecord
    validates :name, :email,  :pawword_digest, :session_token, presence:true
    validates :email, uniqueness: true
    validates :password, length: {minimum: 8}, allow_nil: true
    after_initialize :ensure_session_token

    attr_reader :password

    has_many :items,
    foreign_key: :user_id,
    class_name: 'Items'
end
