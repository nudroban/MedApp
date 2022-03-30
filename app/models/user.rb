class User < ApplicationRecord
  has_many :microposts
  validates  :phone, presence: true
  validates :name, presence: true
end
