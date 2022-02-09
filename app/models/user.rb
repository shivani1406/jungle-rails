class User < ActiveRecord::Base
  has_secure_password

  validates :password, length: {minimum: 5, maximum: 15}, presence: true
  validates :password_confirmation, length: {minimum: 5, maximum: 15}, presence: true
  # validates :password, presence: true
  # validates :password_confirmation, presence: true
  validates :name, uniqueness: { scope: :email }

  def self.authenticate_with_credentials(email, password)
    new_email = email.downcase
    user = User.find_by_email(new_email)
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end
end
