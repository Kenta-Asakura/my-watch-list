class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  # has_many (order matters)
  has_many :movies, through: :bookmarks
  # has to go thru bookmarks
  # same as list.bookmark

  validates :name, presence: true, uniqueness: true
end
