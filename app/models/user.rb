class User < ApplicationRecord
  has_many :votes
  has_many :lists, through: :votes

  has_secure_password
  validates :username, uniqueness: true
end
