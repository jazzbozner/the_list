class Show < ApplicationRecord
  has_many :show_lists
  has_many :lists, through: show_lists
end
