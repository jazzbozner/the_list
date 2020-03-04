class List < ApplicationRecord
  has_many :votes
  has_many :users, through: :votes
  has_many :lists_shows
  has_many :shows, through: :lists_shows
end
