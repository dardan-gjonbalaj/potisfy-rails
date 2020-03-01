class User < ActiveRecord::Base
  has_secure_password
  validates :username, uniqueness: { message: "'is already in use. Try again!'"}
  validates :username, presence: true
end
