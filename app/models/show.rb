class Show < ApplicationRecord
  has_many :shows_lists
  has_many :lists, through: shows_lists
end
