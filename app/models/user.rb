class User < ApplicationRecord
  has_many :votes
  has_many :lists, through: :votes
end
