class User < ActiveRecord::Base
  has_secure_password
 	before_save { email.downcase! }
  before_create :create_remember_token

  
  validates :name, presence: true, length: { maximum: 40 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :password, length: { minimum: 6 }
	


 def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token) #You use self here in order from preventing the remember_token just from being a local variable.....this function is set in private and uses the non private functions above  it ^^ to work. 
    end
end
