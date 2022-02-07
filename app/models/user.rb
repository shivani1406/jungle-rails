class User < ActiveRecord::Base
  has_secure_password

  validates :password_digest, length: {minimum: 5, maximum: 15}
end
