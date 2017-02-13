class User < ApplicationRecord
  has_secure_password
  has_many :orders

  validates :name, presence: true
  validates :email, presence: true
  validates :email_confirmation, presence: true
  validates :email, uniqueness: true
  validates :password, length: { in: 6..20 }
end
