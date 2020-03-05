class User < ApplicationRecord
  has_many :votes
  has_many :lists, through: :votes

  has_secure_password
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :password, presence: true
end
