class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  # private

  # def check_for_bookmarks
  #   if bookmarks.any?
  #     errors.add(:base, "Cannot delete movie with associated bookmarks")
  #     throw :abort
  #   end
  # end
end
