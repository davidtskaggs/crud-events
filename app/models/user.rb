class User < ActiveRecord::Base
  validates :username, :email, presence: true, uniqueness: true
  validates :password, length: {minimum: 6}
  has_many :potlucks
  has_many :tickets

  has_secure_password
end
