class User < ApplicationRecord
  has_many :microposts
  validates  :phone, presence: true,
             uniqueness: true
  validates :name, presence: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
