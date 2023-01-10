class User < ApplicationRecord
    validates :name, :email,  :password_digest, presence:true
    validates :email, uniqueness: true
    validates :password, length: {minimum: 8}, allow_nil: true
    validates :session_token, presence: true, uniqueness: true
    after_initialize :ensure_session_token

    attr_reader :password

    has_many :items,
    foreign_key: :user_id,
    class_name: 'Items'


    
    def self.find_by_credentials(email, password)
        @user = User.find_by(email: email)
        return @user if @user && @user.is_password?(password)
        nil
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end
    
    def reset_session_token!
        self.session_token = SecureRandom.base64()
        self.save!
        self.session_token
    end

    private
    def ensure_session_token
        self.session_token ||= SecureRandom.base64()
    end


end

