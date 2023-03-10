class Movie < ApplicationRecord
  has_many :bookmarks

  # validates presence: true
  validates :title, :overview, presence: true, uniqueness: true
end
