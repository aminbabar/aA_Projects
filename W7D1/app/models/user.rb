class User < ApplicationRecord
    validates :user_name, presence: true, uniqueness: true
    validates :password_digest, presence: true
    validates :password, length: {minimum: 6}, allow_nil: true


    after_initialize :ensure_session_token

    attr_reader :password

    def reset_session_token!
        self.session_token = self.class.generate_session_token
        self.save!
        self.session_token
    end

    def self.generate_session_token
		SecureRandom::urlsafe_base64(32) # just a random string
    end
    
    def ensure_session_token
        self.session_token ||= self.class.generate_session_token
    end

    def password=(password)
        @password = password          # WHY IN THIS METHOD?? 
        self.password_digest = BCrypt::Password.create(password)
    end


    def is_password?(password)
        password_bc = BCrypt::Password.new(self.password_digest)
        password_bc.is_password?(password)
    end


    def self.find_by_credentials(username, password)
        @user = User.find_by(user_name: username)
        return nil unless @user && @user.is_password?(password)
        @user
    end



    



end


