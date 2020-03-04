class Show < ApplicationRecord
  has_many :lists_shows
  has_many :lists, through: :lists_shows
end
