class List < ApplicationRecord
  has_many :votes
  has_many :users, through: :votes
  has_many :lists_shows
  has_many :shows, through: :lists_shows

  validates :name, uniqueness: true
  validates :name, presence: true
  validates :description, presence: true
  validates :description, length: { minimum: 10 }
end
