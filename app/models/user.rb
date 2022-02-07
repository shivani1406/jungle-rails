class User < ActiveRecord::Base
  has_secure_password

  validates :password, length: {minimum: 5, maximum: 15}, presence: true
  validates :password_confirmation, length: {minimum: 5, maximum: 15}, presence: true
  # validates :password, presence: true
  # validates :password_confirmation, presence: true
  validates :name, uniqueness: { scope: :email }
end
