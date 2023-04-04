class Bookmark < ApplicationRecord
  belongs_to :movie

  validates :movie, uniqueness: { scope: :movie_id }
end
