class User < ApplicationRecord
  has_many :players
  has_secure_password

  validates :email, :presence => true, :uniqueness => true
end
