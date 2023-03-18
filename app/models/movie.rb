class Movie < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookmarks

  validates :title, :overview, presence: true, uniqueness: true
end
