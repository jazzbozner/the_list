class List < ApplicationRecord
  has_many :votes
  has_many :users, through: :votes
  has_many :show_lists
  has_many :shows, through: :show_lists
end
