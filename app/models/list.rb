class List < ApplicationRecord
  has_many :votes
  has_many :users, through: :votes
  has_many :shows_lists
  has_many :shows, through: :shows_lists
end
